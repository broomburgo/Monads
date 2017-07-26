import Abstract

// MARK: - Definition

// sourcery: concrete = "Result"
// sourcery: context = "ErrorType"
// sourcery: contextRequiredProtocols = "Error"
// sourcery: zip, <*>, flatMap, lift, lift+, lift-, lift*, lift/, liftPrefix-
public protocol ResultType: PureConstructible {
	associatedtype ErrorType: Error
	init(_ error: ErrorType)
	init()
	func run <A> (ifSuccess: (ElementType) throws -> A, ifFailure: (ErrorType) throws -> A, ifCancel: () throws -> A) rethrows -> A
}

// MARK: - Concrete

// sourcery: context
// sourcery: contextRequiredProtocols = "Error"
// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedContextForLawsAndTests = "AnyError"
// sourcery: fixedTypesForTests = "Int"
// sourcery: arbitrary
// sourcery: additionalParameterForGenericArbitrary = "E"
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

	public func run<A>(ifSuccess: (T) throws -> A, ifFailure: (E) throws -> A, ifCancel: () throws -> A) rethrows -> A {
		switch self {
		case .success(let value):
			return try ifSuccess(value)
		case .failure(let error):
			return try ifFailure(error)
		case .cancel:
			return try ifCancel()
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
	public func map <A> (_ transform: @escaping (ElementType) throws -> A) rethrows -> Result<A,ErrorType> {
		return try run(
			ifSuccess: { .success(try transform($0)) },
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

// MARK: -  CustomZip (ErrorType: Semigroup)

public func zip <A,B,Z> (_ a: A, _ b: B) -> Result<(A.ElementType,B.ElementType),Z> where A: ResultType, B: ResultType, A.ErrorType == Z, B.ErrorType == Z, Z: Error & Semigroup {
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

// MARK: - Utility

extension ResultType {
	public func get() throws -> ElementType? {
		return try run(
			ifSuccess: F.identity,
			ifFailure: { throw $0 },
			ifCancel: F.constant(nil))
	}
}
