// MARK: - Definition

// sourcery: concrete = "Effect"
// sourcery: map, flatMap, zip, <*>, lift, lift+, lift-, lift*, lift/, liftPrefix-
// sourcery: transformer1, transformer2, transformer3
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
