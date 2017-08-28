import Abstract

// MARK: - Definition

// sourcery: concrete = "Effect"
// sourcery: map, joined, flatMap, zip, apply, lift, lift+, lift-, lift*, lift/, liftPrefix-
// sourcery: reducible
// sourcery: traverseRequirement = "ElementType: Monoid"
// sourcery: transformer1, transformer2
public protocol EffectType: PureConstructible {
	init(execute: @escaping () -> ElementType)
	func run() -> ElementType
}

// sourcery: fixedTypesForTests = "Int"
// sourcery: functorLaws, applicativeLaws, monadLaws
public struct Effect<T>: EffectType {
	public typealias ElementType = T

	private let execute: () -> T
	public init(execute: @escaping () -> ElementType) {
		self.execute = execute
	}

	public init(_ value: ElementType) {
		self.init(execute: F.constant(value))
	}

	public func run() -> T {
		return execute()
	}
}

extension Effect where T: Equatable {
	public static func == (left: Effect, right: Effect) -> Bool {
		return left.run() == right.run()
	}
}

// MARK: - Functor

extension EffectType {
	public func map <A> (_ transform: @escaping (ElementType) -> A) -> Effect<A> {
		return Effect<A>.init { transform(self.run()) }
	}
}

// MARK: - Joined

extension EffectType where ElementType: EffectType {
	public var joined: Effect<ElementType.ElementType> {
		return Effect<ElementType.ElementType>.init { self.run().run() }
	}
}

// MARK: - Monoid

extension Effect where ElementType: Monoid {
	public static var empty: Effect {
		return Effect.init(.empty)
	}

	public static func <> (left: Effect, right: Effect) -> Effect {
		return Effect.init { left.run() <> right.run() }
	}
}

// MARK: - Reducible

extension EffectType where ElementType: Monoid {
	static var neutral: Effect<ElementType> {
		return .empty
	}

	static func appending(_ x: ElementType) -> Endo<Effect<ElementType>> {
		return { $0 <> Effect.init(x) }
	}
}

extension Effect: Reducible {
	public func reduce<T>(_ initialResult: T, _ nextPartialResult: (T,ElementType) throws -> (T)) rethrows -> T {
		return try nextPartialResult(initialResult,run())
	}
}

// MARK: - Utility

extension Effect where T == () {
	public static var ignored: Effect {
		return .init { }
	}
}
