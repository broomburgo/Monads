// MARK: - Definition

// sourcery: concrete = "Array"
// sourcery: zip, <*>, flatMap, lift, lift-, lift*, lift/, liftPrefix-
public protocol ArrayType: PureConstructible {
	func run(_ callback: @escaping (ElementType) -> ())
}

// MARK: - Concrete

// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedTypesForTests = "Int"
extension Array: ArrayType {
	public typealias ElementType = Element

	public init(_ value: ElementType) {
		self = [value]
	}

	public func run(_ callback: @escaping (Element) -> ()) {
		forEach(callback)
	}
}

// MARK: - Functor

extension ArrayType {
	public func map <A> (_ transform: @escaping (ElementType) -> A) -> Array<A> {
		var transformed = [A]()
		run { transformed.append(transform($0)) }
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
