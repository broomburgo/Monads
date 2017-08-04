public protocol PureConstructible {
	associatedtype ElementType
	init(_ value: ElementType)
}

extension PureConstructible where ElementType: PureConstructible {
	public init(_ valueT: ElementType.ElementType) {
		self.init(ElementType.init(valueT))
	}
}

extension PureConstructible where ElementType: PureConstructible, ElementType.ElementType: PureConstructible {
	public init(_ valueTT: ElementType.ElementType.ElementType) {
		self.init(ElementType.init(ElementType.ElementType.init(valueTT)))
	}
}

extension PureConstructible where ElementType: PureConstructible, ElementType.ElementType: PureConstructible, ElementType.ElementType.ElementType: PureConstructible {
	public init(_ valueTTT: ElementType.ElementType.ElementType.ElementType) {
		self.init(ElementType.init(ElementType.ElementType.init(ElementType.ElementType.ElementType.init(valueTTT))))
	}
}
