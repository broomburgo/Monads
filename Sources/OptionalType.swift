// MARK: - Definition

// sourcery: concrete = "Optional"
// sourcery: map, joined, flatMap, zip, <*>, lift, lift+, lift-, lift*, lift/, liftPrefix-
// sourcery: transformer1, transformer2, transformer3
public protocol OptionalType: PureConstructible {
	init()
	func run<A>(ifSome: (ElementType) throws -> A, ifNone: () throws -> A) rethrows -> A
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

	public func run<A>(ifSome: (Wrapped) throws -> A, ifNone: () throws -> A) rethrows -> A {
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
		return try run(
			ifSome: { try .some(transform($0)) },
			ifNone: { .none })
	}
}

// MARK: - Joined

extension OptionalType where ElementType: OptionalType {
	public var joined: Optional<ElementType.ElementType> {
		return run(
			ifSome: { $0.run(
				ifSome: { .some($0) },
				ifNone: { .none }) },
			ifNone: { .none })
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
		return run(
			ifSome: F.identity,
			ifNone: getElseValue)
	}

	public func get(orError getError: @autoclosure () -> Error) throws -> ElementType {
		return try run(
			ifSome: F.identity,
			ifNone: { throw getError() })
	}

	public func toResult<E>(getError: @autoclosure () -> E) -> Result<ElementType,E> where E: Error {
		return run(
			ifSome: { .success($0) },
			ifNone: { .failure(getError()) })
	}

	public var isNil: Bool {
		return run(
			ifSome: F.constant(false),
			ifNone: F.constant(true))
	}

	public var isNotNil: Bool {
		return run(
			ifSome: F.constant(true),
			ifNone: F.constant(false))
	}

	public func ifNotNil(_ action: @escaping (ElementType) -> ()) {
		run(ifSome: action,
			ifNone: F.ignore)
	}
}
