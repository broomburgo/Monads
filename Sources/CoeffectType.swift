import Abstract

//MARK: - Definition

public protocol CoeffectType {
	associatedtype ElementType

	init(execute: @escaping (ElementType) -> ())
	func run(_ value: ElementType)
}

public struct Coeffect<T>: CoeffectType {
	public typealias ElementType = T

	private let execute: (T) -> ()

	public init(execute: @escaping (ElementType) -> ()) {
		self.execute = execute
	}

	public func run(_ value: T) {
		execute(value)
	}
}

//MARK: - Contravariant Functor

extension CoeffectType {
	public func contramap <A> (_ transform: @escaping (A) -> ElementType) -> Coeffect<A> {
		return Coeffect<A>.init { self.run(transform($0)) }
	}
}

// MARK: - Zip

public func zip <A,B> (_ first: A, _ second: B) -> Coeffect<(A.ElementType,B.ElementType)> where A: CoeffectType, B:CoeffectType {
	return Coeffect<(A.ElementType,B.ElementType)>.init {
		first.run($0)
		second.run($1)
	}
}
