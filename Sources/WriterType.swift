import Abstract

// MARK: - Definition

// sourcery: concrete = "Writer"
// sourcery: context = "LogType"
// sourcery: contextRequiredProtocols = "Monoid"
// sourcery: map, joined, flatMap, zip, <*>, lift, lift+, lift-, lift*, lift/, liftPrefix-
// sourcery: transformer1, transformer2, transformer3
public protocol WriterType: PureConstructible {
	associatedtype LogType: Monoid
	init(value: ElementType, log: LogType)
	var run: (ElementType,LogType) { get }
}

// MARK: - Concrete

// sourcery: context
// sourcery: contextRequiredProtocols = "LogType"
// sourcery: functorLaws, applicativeLaws, monadLaws
// sourcery: fixedContextForLawsAndTests = "String"
// sourcery: fixedTypesForTests = "Int"
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

	public init(_ value: ElementType) {
		self.init(value: value, log: .empty)
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

extension String: Monoid {
	public static func <> (left: String, right: String) -> String {
		return left + right
	}

	public static var empty: String {
		return ""
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

// MARK: - Utility

extension WriterType {
	public func tell(_ newLog: LogType) -> Self {
		let (oldValue,oldLog) = run
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
