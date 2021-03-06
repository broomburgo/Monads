import Functional

// MARK: - Definition

// sourcery: map, joined, reducible
// sourcery: concrete = "Optional"
// sourcery: transformer1, transformer2
public protocol OptionalType: PureConstructible {
	init()
	var run: ElementType? { get }
	func fold<A>(ifSome: (ElementType) throws -> A, ifNone: () throws -> A) rethrows -> A
}

// MARK: - Concrete

// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: throwingMap
// sourcery: fixedTypesForTests = "Int"
extension Optional: OptionalType {
	public typealias ElementType = Wrapped

	public init() {
		self = nil
	}

	public static func pure(_ value: Wrapped) -> Optional<Wrapped> {
		return Optional(value)
	}

	public var run: Wrapped? {
		return self
	}

	public func fold<A>(ifSome: (Wrapped) throws -> A, ifNone: () throws -> A) rethrows -> A {
		if let this = self {
			return try ifSome(this)
		} else {
			return try ifNone()
		}
	}
}

// MARK: - Functor

extension OptionalType {
	public func map <A> (_ transform: @escaping (ElementType) throws -> A) rethrows -> Optional<A> {
		return try fold(
			ifSome: { try .some(transform($0)) },
			ifNone: { .none })
	}
}

// MARK: - Joined

extension OptionalType where ElementType: OptionalType {
	public var joined: Optional<ElementType.ElementType> {
		return fold(
			ifSome: { $0.fold(
				ifSome: { .some($0) },
				ifNone: { .none }) },
			ifNone: { .none })
	}
}

// MARK: - Reducible

extension OptionalType {
	static var neutral: Optional<ElementType> {
		return .none
	}

	static func appending(_ x: ElementType) -> Endo<Optional<ElementType>> {
		return { $0 ?? .some(x) }
	}
}

extension Optional: Reducible {
	public typealias ReducibleElementType = ElementType

	public func reduce<T>(_ initialResult: T, _ nextPartialResult: (T, ElementType) throws -> T) rethrows -> T {
		switch self {
		case .some(let value):
			return try nextPartialResult(initialResult,value)
		case .none:
			return initialResult
		}
	}
}

// MARK: - Utility

extension OptionalType {
	public func filter(_ predicate: @escaping (ElementType) -> Bool) -> Optional<ElementType> {
		return flatMap { (element) -> Optional<ElementType> in
			if predicate(element) {
				return .some(element)
			} else {
				return .none
			}
		}
	}

	public func get(or getElseValue: @autoclosure () -> ElementType) -> ElementType {
		return fold(
			ifSome: F.identity,
			ifNone: getElseValue)
	}

	public func get(orError getError: @autoclosure () -> Error) throws -> ElementType {
		return try fold(
			ifSome: F.identity,
			ifNone: { throw getError() })
	}

	public func toResult<E>(getError: @autoclosure () -> E) -> Result<ElementType,E> where E: Error {
		return fold(
			ifSome: { .success($0) },
			ifNone: { .failure(getError()) })
	}

	public var isNil: Bool {
		return fold(
			ifSome: { _ in false },
			ifNone: { true })
	}

	public var isNotNil: Bool {
		return isNil.not
	}

	public func ifNotNil(_ action: @escaping (ElementType) -> ()) {
		fold(ifSome: action,
		    ifNone: {})
	}
}
