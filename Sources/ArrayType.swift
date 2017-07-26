// MARK: - Definition

// sourcery: concrete = "Array"
// sourcery: zip, <*>, flatMap, lift, lift-, lift*, lift/, liftPrefix-
public protocol ArrayType: PureConstructible {
	var run: [ElementType] { get }
}

// MARK: - Concrete

// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedTypesForTests = "Int"
extension Array: ArrayType {
	public typealias ElementType = Element

	public init(_ value: ElementType) {
		self = [value]
	}

	public var run: [Element] {
		return self
	}
}

// MARK: - Functor

extension ArrayType {
	public func map <A> (_ transform: @escaping (ElementType) throws -> A) rethrows -> Array<A> {
		var transformed = [A]()
		for element in run {
			transformed.append(try transform(element))
		}
		return transformed
	}
}

// MARK: - Joined

extension ArrayType where ElementType: ArrayType {
	public var joined: Array<ElementType.ElementType> {
		return run.reduce([]) { $0.run + $1.run }
	}
}
