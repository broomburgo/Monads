public protocol PureConstructible {
	associatedtype ElementType
	init(_ value: ElementType)
}
