// MARK: - Definition

import Abstract

// sourcery: concrete = "Deferred"
// sourcery: map, joined, flatMap, apply, lift, lift+, lift-, lift*, lift/, liftPrefix-
// sourcery: transformer1
public protocol DeferredType: PureConstructible {
	init(completion: (@escaping (ElementType) -> ()) -> ())
	func run(_ callback: @escaping (ElementType) -> ())
}

// MARK: - Concrete

// sourcery: fixedTypesForTests = "Int"
// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: arbitrary
public final class Deferred<T>: DeferredType {
	public typealias ElementType = T

	// sourcery: arbitraryIgnoreVariable
	var callbacks: [(T) -> ()] = []

	var value: T?
	public init(value: T?) {
		self.value = value
	}

	public convenience init(completion: (@escaping (T) -> ()) -> ()) {
		self.init(value: nil)
		completion { value in
			self.value = value
			self.callbacks.forEach { $0(value) }
		}
	}

	public convenience init(_ value: T) {
		self.init(value: value)
	}

	public func run(_ callback: @escaping (T) -> ()) {
		if let value = value {
			callback(value)
		} else {
			callbacks.append(callback)
		}
	}

	public var peek: T? {
		return value
	}
}

extension Deferred where T: Equatable {
	public static func == (left: Deferred, right: Deferred) -> Bool {
		return left.value == right.value
	}
}

// MARK: - Functor

extension DeferredType {
	public func map <A> (_ transform: @escaping (ElementType) -> A) -> Deferred<A> {
		return Deferred<A>.init { done in
			self.run { done(transform($0)) }
		}
	}
}

// MARK: - Joined

extension DeferredType where ElementType: DeferredType {
	public var joined: Deferred<ElementType.ElementType> {
		return Deferred<ElementType.ElementType>.init { done in
			self.run { $0.run(done) }
		}
	}
}

// MARK: -  Custom Zip (parallel computation)

extension DeferredType {
	public static func zip <A,B> (_ a: A, _ b: B) -> Deferred<(A.ElementType,B.ElementType)> where A: DeferredType, B: DeferredType, ElementType == (A.ElementType,B.ElementType) {
		return Deferred<(A.ElementType,B.ElementType)>.init { (done) in
			var aValue: A.ElementType? = nil
			var bValue: B.ElementType? = nil
			func checkDone() {
				guard let aValue = aValue, let bValue = bValue else { return }
				done(aValue,bValue)
			}
			a.run { aValue = $0; checkDone() }
			b.run { bValue = $0; checkDone() }
		}
	}
}
