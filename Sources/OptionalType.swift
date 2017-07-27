// MARK: - Definition

// sourcery: concrete = "Optional"
// sourcery: flatMap, zip, <*>, lift, lift+, lift-, lift*, lift/, liftPrefix-
// sourcery: transformer
public protocol OptionalType: PureConstructible {
	func run<A>(ifSome: (ElementType) -> A, ifNone: () -> A) -> A
}

// MARK: - Concrete

// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedTypesForTests = "Int"
extension Optional: OptionalType {
	public typealias ElementType = Wrapped

	public func run<A>(ifSome: (Wrapped) -> A, ifNone: () -> A) -> A {
		if let this = self {
			return ifSome(this)
		} else {
			return ifNone()
		}
	}
}

// MARK: - Functor

extension OptionalType {
	public func map <A> (_ transform: @escaping (ElementType) -> A) -> Optional<A> {
		return run(
			ifSome: { .some(transform($0)) },
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
