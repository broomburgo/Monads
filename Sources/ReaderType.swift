import Abstract

// MARK: - Definition

// sourcery: concrete = "Reader"
// sourcery: context = "EnvironmentType"
// sourcery: map, joined, flatMap, zip, apply, lift, lift+, lift-, lift*, lift/, liftPrefix-
public protocol ReaderType: PureConstructible {
	associatedtype EnvironmentType
	init(_ execute: @escaping (EnvironmentType) -> ElementType)
	func run(_ environment: EnvironmentType) -> ElementType
}

// MARK: - Concrete

// sourcery: context
// sourcery: fixedContextForLawsAndTests = "String"
// sourcery: fixedTypesForTests = "Int"
// sourcery: requiredContextForPropertyBasedTests = "String"
// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: arbitraryFunction
// sourcery: arbitraryFunctionInverseParameters
// sourcery: arbitraryAdditionalParameterForGeneric = "E"
public struct Reader<T,E>: ReaderType {
	public typealias ElementType = T
	public typealias EnvironmentType = E

	let execute: (E) -> T

	public init(_ execute: @escaping (EnvironmentType) -> ElementType) {
		self.execute = execute
	}

	public init(_ value: ElementType) {
		self.init(F.constant(value))
	}

	public func run(_ environment: E) -> T {
		return execute(environment)
	}
}

extension Reader where T: Equatable {
	public static func == (left: Reader, right: Reader) -> (E) -> Bool {
		return { env in
			left.run(env) == right.run(env)
		}
	}
}

// MARK: - Functor

extension ReaderType {
	public func map <A> (_ transform: @escaping (ElementType) -> A) -> Reader<A,EnvironmentType> {
		return Reader<A,EnvironmentType>.init { env in
			transform(self.run(env))
		}
	}
}

// MARK: - Joined

extension ReaderType where ElementType: ReaderType, ElementType.EnvironmentType == EnvironmentType {
	public var joined: Reader<ElementType.ElementType,EnvironmentType> {
		return Reader<ElementType.ElementType,EnvironmentType>.init { env in
			self.run(env).run(env)
		}
	}
}

// MARK: - Utility

extension ReaderType {
	public static func ask<A>() -> Reader<A,A> where ElementType == A, EnvironmentType == A {
		return Reader<A,A>.init(F.identity)
	}

	public func local<A>(_ transform: @escaping (A) -> EnvironmentType) -> Reader<ElementType,A> {
		return Reader<ElementType,A>.init { env in
			self.run(transform(env))
		}
	}
}
