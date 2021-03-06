import Abstract
import Functional

// MARK: - Definition

// sourcery: map, joined, reducible
// sourcery: concrete = "Writer"
// sourcery: transformer1, transformer2
// sourcery: secondaryParameter = "LogType"
// sourcery: secondaryParameterRequiredProtocols = "Monoid"
// sourcery: traverseRequirement = "ElementType: Monoid"
public protocol WriterType: PureConstructible {
	associatedtype LogType: Monoid
	init(value: ElementType, log: LogType)
	var run: (ElementType,LogType) { get }
}

// MARK: - Concrete

// sourcery: secondaryParameter
// sourcery: secondaryParameterRequiredProtocols = "LogType"
// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedTypesForTests = "Int"
// sourcery: fixedSecondaryParameterForTests = "String"
// sourcery: arbitrary
// sourcery: arbitraryAdditionalParameterForGeneric = "L"
// sourcery: arbitraryAdditionalGenericParameterProtocols = "Monoid & Arbitrary"
public struct Writer<T,L>: WriterType where L: Monoid {
	public typealias ElementType = T
	public typealias LogType = L

	let value: T
	let log: L

	public init(value: ElementType, log: LogType) {
		self.value = value
		self.log = log
	}

	public static func pure(_ value: ElementType) -> Writer {
		return Writer.init(value: value, log: .empty)
	}

	public var run: (T, L) {
		return (value, log)
	}
}

extension Writer where T: Equatable, L: Equatable {
	public static func == (left: Writer, right: Writer) -> Bool {
		guard left.value == right.value else { return false }
		guard left.log == right.log else { return false }
		return true
	}
}

// MARK: - Functor

extension WriterType {
	public func map <A> (_ transform: @escaping (ElementType) -> A) -> Writer<A,LogType> {
		let (value, log) = run
		return Writer<A,LogType>.init(value: transform(value), log: log)
	}
}

// MARK: - Joined

extension WriterType where ElementType: WriterType, ElementType.LogType == LogType {
	public var joined: Writer<ElementType.ElementType,LogType> {
		let (inner, log1) = run
		let (value, log2) = inner.run
		return Writer<ElementType.ElementType,LogType>.init(value: value, log: log1 <> log2)
	}
}

// MARK: - Semigroup & Monoid

extension Writer where ElementType: Semigroup {
	public static func <> (left: Writer, right: Writer) -> Writer {
		return left >>- { value in right.map { value <> $0 } }
	}
}

extension Writer where ElementType: Monoid {
	public static var empty: Writer {
		return Writer.init(value: .empty, log: .empty)
	}
}

// MARK: - Reducible

extension WriterType where ElementType: Monoid {
	static var neutral: Writer<ElementType,LogType> {
		return .empty
	}

	static func appending(_ x: ElementType) -> Endo<Writer<ElementType,LogType>> {
		return { $0 <> Writer.pure(x) }
	}
}

extension Writer: Reducible {
	public func reduce<T>(_ initialResult: T, _ nextPartialResult: (T,ElementType) throws -> (T)) rethrows -> T {
		return try nextPartialResult(initialResult,run.0)
	}
}

// MARK: - Utility

extension WriterType {
	public func tell(_ newLog: LogType) -> Self {
		let (oldValue,oldLog) = run
		return Self(value: oldValue, log: oldLog <> newLog)
	}

	public func remember(_ oldLog: LogType) -> Self {
		let (oldValue,newLog) = run
		return Self(value: oldValue, log: oldLog <> newLog)
	}

	public func read(_ transform: (ElementType) -> LogType) -> Self {
		let (oldValue,oldLog) = run
		return Self(value: oldValue, log: oldLog <> transform(oldValue))
	}

	public func censor(_ transform: (LogType) -> LogType) -> Self {
		let (oldValue,oldLog) = run
		return Self(value: oldValue, log: transform(oldLog))
	}

	public var listen: Writer<(ElementType,LogType),LogType> {
		let (oldValue,oldLog) = run
		return Writer(value: (oldValue,oldLog), log: oldLog)
	}
}
