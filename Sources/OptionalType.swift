// MARK: - Definition

// sourcery: concrete = "Optional"
// sourcery: zip, <*>, flatMap, lift, lift+, lift-, lift*, lift/, liftPrefix-
public protocol OptionalType: PureConstructible {
	func run<A>(ifSome: (ElementType) throws -> A, ifNone: () throws -> A) rethrows -> A
}

// MARK: - Concrete

// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedTypesForTests = "Int"
extension Optional: OptionalType {
	public typealias ElementType = Wrapped

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
			ifSome: { .some(try transform($0)) },
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
	public func filter(_ predicate: @escaping (ElementType) throws -> Bool) rethrows -> Optional<ElementType> {
		return try flatMap { (element) throws -> Optional<ElementType> in
			if try predicate(element) {
				return .some(element)
			} else {
				return .none
			}
		}
	}

	public func get(or elseValue: @autoclosure () -> ElementType) -> ElementType {
		return run(
			ifSome: F.identity,
			ifNone: elseValue)
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
