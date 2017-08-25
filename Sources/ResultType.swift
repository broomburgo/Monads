import Abstract

// MARK: - Definition

// sourcery: concrete = "Result"
// sourcery: context = "ErrorType"
// sourcery: contextRequiredProtocols = "Error"
// sourcery: map, joined, flatMap, zip, apply, traverse, lift, lift+, lift-, lift*, lift/, liftPrefix-
// sourcery: transformer1, transformer2
public protocol ResultType: PureConstructible {
	associatedtype ErrorType: Error
	init(_ error: ErrorType)
	init()
	func run <A> (ifSuccess: (ElementType) -> A, ifFailure: (ErrorType) -> A, ifCancel: () -> A) -> A
}

// MARK: - Concrete

// sourcery: context
// sourcery: contextRequiredProtocols = "Error"
// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedContextForLawsAndTests = "AnyError"
// sourcery: fixedTypesForTests = "Int"
// sourcery: arbitrary
// sourcery: arbitraryAdditionalParameterForGeneric = "E"
// sourcery: arbitraryAdditionalGenericParameterProtocols = "Error & Arbitrary"
public enum Result<T,E>: ResultType where E: Error {
	public typealias ElementType = T
	public typealias ErrorType = E

	case success(T)
	case failure(E)
	case cancel

	public init(_ value: ElementType) {
		self = .success(value)
	}

	public init(_ error: ErrorType) {
		self = .failure(error)
	}

	public init() {
		self = .cancel
	}

	public func run<A>(ifSuccess: (T) -> A, ifFailure: (E) -> A, ifCancel: () -> A) -> A {
		switch self {
		case .success(let value):
			return ifSuccess(value)
		case .failure(let error):
			return ifFailure(error)
		case .cancel:
			return ifCancel()
		}
	}

	public func get() throws -> ElementType? {
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
		return run(
			ifSuccess: { .success(transform($0)) },
			ifFailure: { .failure($0) },
			ifCancel: { .cancel })
	}
}

// MARK: - Joined

extension ResultType where ElementType: ResultType, ElementType.ErrorType == ErrorType {
	public var joined: Result<ElementType.ElementType,ErrorType> {
		return run(
			ifSuccess: { $0.run(
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
		return a.run(
			ifSuccess: { aValue in b.run(
				ifSuccess: { bValue in .success((aValue,bValue)) },
				ifFailure: { bError in .failure(bError) },
				ifCancel: { .cancel }) },
			ifFailure: { aError in b.run(
				ifSuccess: F.constant(.failure(aError)),
				ifFailure: { bError in .failure(aError <> bError)},
				ifCancel: { .cancel }) },
			ifCancel: { .cancel })
	}
}

// MARK: Utility

extension ResultType {
	public func mapError<E>(_ transform: @escaping (ErrorType) -> E) -> Result<ElementType,E> {
		return run(
			ifSuccess: Result.success,
			ifFailure: Result.failure • transform,
			ifCancel: F.constant(Result.cancel))
	}

	public func fallback(to defaultValue: ElementType) -> Result<ElementType,ErrorType> {
		return run(
			ifSuccess: Result<ElementType,ErrorType>.success,
			ifFailure: F.constant(Result<ElementType,ErrorType>.success(defaultValue)),
			ifCancel: F.constant(Result<ElementType,ErrorType>.success(defaultValue)))
	}

	public var toOptionalValue: ElementType? {
		return run(
			ifSuccess: F.identity,
			ifFailure: F.constant(nil),
			ifCancel: F.constant(nil))
	}

	public var toOptionalError: ErrorType? {
		return run(
			ifSuccess: F.constant(nil),
			ifFailure: F.identity,
			ifCancel: F.constant(nil))
	}

	public var isCanceled: Bool {
		return run(
			ifSuccess: F.constant(false),
			ifFailure: F.constant(false),
			ifCancel: F.constant(true))
	}
}
