import Abstract
import Functional

// MARK: - Definition

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

	public static var ignored: Coeffect {
		return Coeffect.init(execute: F.ignore)
	}
}

// MARK: - Contravariant Functor

extension CoeffectType {
	public func contramap <A> (_ transform: @escaping (A) -> ElementType) -> Coeffect<A> {
		return Coeffect<A>.init { self.run(transform($0)) }
	}
}

// MARK: - Zip

extension Coeffect {
	public static func zip <A,B> (_ first: A, _ second: B) -> Coeffect<(A.ElementType,B.ElementType)> where A: CoeffectType, B: CoeffectType, ElementType == (A.ElementType,B.ElementType) {
		return Coeffect<(A.ElementType,B.ElementType)>.init {
			first.run($0)
			second.run($1)
		}
	}

	public static func zip <A,B,C> (_ first: A, _ second: B, _ third: C) -> Coeffect<(A.ElementType,B.ElementType,C.ElementType)> where A: CoeffectType, B: CoeffectType, C: CoeffectType, ElementType == (A.ElementType,B.ElementType,C.ElementType) {
		return Coeffect<(A.ElementType,B.ElementType,C.ElementType)>.init {
			first.run($0)
			second.run($1)
			third.run($2)
		}
	}
}

// MARK: - Monoid

extension Coeffect: Monoid {
	public static var empty: Coeffect {
		return .ignored
	}

	public static func <> (left: Coeffect, right: Coeffect) -> Coeffect {
		return Coeffect.init {
			left.run($0)
			right.run($0)
		}
	}
}
