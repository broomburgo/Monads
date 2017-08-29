import Functional

// MARK: - Definition

// sourcery: concrete = "Array"
// sourcery: reducible
// sourcery: map, joined, flatMap, zip, apply, lift, lift-, lift*, lift/
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

// MARK: - Reducible

extension ArrayType {
	static var neutral: Array<ElementType> {
		return []
	}

	static func appending(_ x: ElementType) -> Endo<Array<ElementType>> {
		return { $0 + [x] }
	}
}

extension Array: Reducible {
	public typealias ReducibleElementType = ElementType
}

// MARK: - Utility
extension ArrayType {
	public var getArray: Array<ElementType> {
		var array: Array<ElementType> = []
		run {
			array.append($0)
		}
		return array
	}
}
