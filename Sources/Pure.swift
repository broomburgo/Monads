public protocol PureConstructible {
	associatedtype ElementType
	static func pure(_ value: ElementType)  -> Self
}

extension PureConstructible where ElementType: PureConstructible {
	public static func pure(_ valueT: ElementType.ElementType) -> Self {
		return pure(ElementType.pure(valueT))
	}
}

extension PureConstructible where ElementType: PureConstructible, ElementType.ElementType: PureConstructible {
	public static func pure(_ valueTT: ElementType.ElementType.ElementType) -> Self {
		return pure(ElementType.pure(ElementType.ElementType.pure(valueTT)))
	}
}

extension PureConstructible where ElementType: PureConstructible, ElementType.ElementType: PureConstructible, ElementType.ElementType.ElementType: PureConstructible {
	public static func pure(_ valueTTT: ElementType.ElementType.ElementType.ElementType) -> Self {
		return pure(ElementType.pure(ElementType.ElementType.pure(ElementType.ElementType.ElementType.pure(valueTTT))))
	}
}
