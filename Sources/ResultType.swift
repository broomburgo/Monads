import Abstract
import Functional

// MARK: - Definition

// sourcery: map, joined, reducible
// sourcery: concrete = "Result"
// sourcery: transformer1, transformer2
// sourcery: secondaryParameter = "ErrorType"
// sourcery: secondaryParameterRequiredProtocols = "Error"
public protocol ResultType: PureConstructible {
	associatedtype ErrorType: Error
	init(_ error: ErrorType)
	init()
	func run() throws -> ElementType?
	func fold <A> (ifSuccess: (ElementType) -> A, ifFailure: (ErrorType) -> A, ifCancel: () -> A) -> A
}

// MARK: - Concrete

// sourcery: secondaryParameter
// sourcery: secondaryParameterRequiredProtocols = "Error"
// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedTypesForTests = "Int"
// sourcery: fixedSecondaryParameterForTests = "AnyError"
// sourcery: arbitrary
// sourcery: arbitraryAdditionalParameterForGeneric = "E"
// sourcery: arbitraryAdditionalGenericParameterProtocols = "Error & Arbitrary"
public enum Result<T,E>: ResultType where E: Error {
	public typealias ElementType = T
	public typealias ErrorType = E

	case success(T)
	case failure(E)
	case cancel

	public static func pure(_ value: ElementType) -> Result {
		return .success(value)
	}

	public init(_ error: ErrorType) {
		self = .failure(error)
	}

	public init() {
		self = .cancel
	}

	public func fold<A>(ifSuccess: (T) -> A, ifFailure: (E) -> A, ifCancel: () -> A) -> A {
		switch self {
		case .success(let value):
			return ifSuccess(value)
		case .failure(let error):
			return ifFailure(error)
		case .cancel:
			return ifCancel()
		}
	}

	public func run() throws -> ElementType? {
		switch self {
		case .success(let value):
			return value
		case .failure(let error):
			throw error
		case .cancel:
			return nil
		}
	}
}

extension Result where T: Equatable, E: Equatable {
	public static func == (left: Result, right: Result) -> Bool {
		switch (left,right) {
		case (.success(let leftValue), .success(let rightValue)):
			return leftValue == rightValue
		case (.failure(let leftError), .failure(let rightError)):
			return leftError == rightError
		case (.cancel,.cancel):
			return true
		default:
			return false
		}
	}
}

// MARK: - Functor

extension ResultType {
	public func map <A> (_ transform: @escaping (ElementType) -> A) -> Result<A,ErrorType> {
		return fold(
			ifSuccess: { .success(transform($0)) },
			ifFailure: { .failure($0) },
			ifCancel: { .cancel })
	}
}

// MARK: - Joined

extension ResultType where ElementType: ResultType, ElementType.ErrorType == ErrorType {
	public var joined: Result<ElementType.ElementType,ErrorType> {
		return fold(
			ifSuccess: { $0.fold(
				ifSuccess: { .success($0) },
				ifFailure: { .failure($0) },
				ifCancel: { .cancel }) },
			ifFailure: { .failure($0) },
			ifCancel: { .cancel })
	}
}

// MARK: -  Custom Zip (ErrorType: Semigroup)

extension ResultType where ErrorType: Semigroup {
	public static func zip <A,B> (_ a: A, _ b: B) -> Result<(A.ElementType,B.ElementType),ErrorType> where A: ResultType, B: ResultType, A.ErrorType == ErrorType, B.ErrorType == ErrorType, ElementType == (A.ElementType,B.ElementType) {
		return a.fold(
			ifSuccess: { aValue in b.fold(
				ifSuccess: { bValue in .success((aValue,bValue)) },
				ifFailure: { bError in .failure(bError) },
				ifCancel: { .cancel }) },
			ifFailure: { aError in b.fold(
				ifSuccess: { _ in .failure(aError) },
				ifFailure: { bError in .failure(aError <> bError)},
				ifCancel: { .cancel }) },
			ifCancel: { .cancel })
	}
}

// MARK: - Reducible

extension ResultType {
	static var neutral: Result<ElementType,ErrorType> {
		return .cancel
	}

	static func appending(_ x: ElementType) -> Endo<Result<ElementType,ErrorType>> {
		return { $0.fold(
			ifSuccess: Result.success,
			ifFailure: { _ in Result.success(x) },
			ifCancel: { Result.success(x) })
		}
	}
}

extension Result: Reducible {
	public typealias ReducibleElementType = ElementType

	public func reduce<T>(_ initialResult: T, _ nextPartialResult: (T, ElementType) throws -> T) rethrows -> T {
		switch self {
		case .success(let value):
			return try nextPartialResult(initialResult,value)
		case .failure:
			return initialResult
		case .cancel:
			return initialResult
		}
	}
}

// MARK: Utility

extension ResultType {
	public func mapError<E>(_ transform: @escaping (ErrorType) -> E) -> Result<ElementType,E> {
		return fold(
			ifSuccess: Result.success,
			ifFailure: Result.failure • transform,
			ifCancel: { Result.cancel })
	}

	public func fallback(to defaultValue: ElementType) -> Result<ElementType,ErrorType> {
		return fold(
			ifSuccess: Result.success,
			ifFailure: { _ in Result.success(defaultValue) },
			ifCancel: { Result.success(defaultValue) })
	}

	public var toOptionalValue: ElementType? {
		return fold(
			ifSuccess: F.identity,
			ifFailure: { _ in nil },
			ifCancel: { nil })
	}

	public var toOptionalError: ErrorType? {
		return fold(
			ifSuccess: { _ in nil },
			ifFailure: F.identity,
			ifCancel: { nil })
	}

	public var isCanceled: Bool {
		return fold(
			ifSuccess: { _ in false },
			ifFailure: { _ in false },
			ifCancel: { true })
	}
}
