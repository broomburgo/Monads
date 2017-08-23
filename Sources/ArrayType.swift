// MARK: - Definition

// sourcery: concrete = "Array"
// sourcery: map, joined, flatMap, zip, apply, lift, lift-, lift*, lift/, liftPrefix-
// sourcery: transformer1
public protocol ArrayType: PureConstructible {
	func run(_ callback: @escaping (ElementType) throws -> ()) rethrows
}

// MARK: - Concrete

// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: throwingMap
// sourcery: fixedTypesForTests = "Int"
extension Array: ArrayType {
	public typealias ElementType = Element

	public init(_ value: ElementType) {
		self = [value]
	}

	public func run(_ callback: @escaping (Element) throws -> ()) rethrows {
		try forEach(callback)
	}
}

// MARK: - Functor

extension ArrayType {
	public func map <A> (_ transform: @escaping (ElementType) throws -> A) rethrows -> Array<A> {
		var transformed = [A]()
		try run { try transformed.append(transform($0)) }
		return transformed
	}
}

// MARK: - Joined

extension ArrayType where ElementType: ArrayType {
	public var joined: Array<ElementType.ElementType> {
		var reduced = Array<ElementType.ElementType>.init()
		run { $0.run { reduced.append($0) } }
		return reduced
	}
}
