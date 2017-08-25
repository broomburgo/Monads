public protocol Reducible {
	associatedtype ReducibleElementType
	func reduce<T>(_ initialResult: T, _ nextPartialResult: (T,ReducibleElementType) throws -> T) rethrows -> T
}
