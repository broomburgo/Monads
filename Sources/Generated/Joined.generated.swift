// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `joined` definitions; requires `concrete`

import Abstract

// MARK: - ArrayType

extension ArrayType where ElementType: ArrayType, ElementType.ElementType: ArrayType {
	public var joinedT: Array<ElementType.ElementType.ElementType> {
		return joined.joined
	}
}

extension ArrayType where ElementType: ArrayType, ElementType.ElementType: ArrayType, ElementType.ElementType.ElementType: ArrayType {
	public var joinedTT: Array<ElementType.ElementType.ElementType.ElementType> {
		return joined.joined.joined
	}
}

// MARK: - DeferredType

extension DeferredType where ElementType: DeferredType, ElementType.ElementType: DeferredType {
	public var joinedT: Deferred<ElementType.ElementType.ElementType> {
		return joined.joined
	}
}

extension DeferredType where ElementType: DeferredType, ElementType.ElementType: DeferredType, ElementType.ElementType.ElementType: DeferredType {
	public var joinedTT: Deferred<ElementType.ElementType.ElementType.ElementType> {
		return joined.joined.joined
	}
}

// MARK: - EffectType

extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public var joinedT: Effect<ElementType.ElementType.ElementType> {
		return joined.joined
	}
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public var joinedTT: Effect<ElementType.ElementType.ElementType.ElementType> {
		return joined.joined.joined
	}
}

// MARK: - OptionalType

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public var joinedT: Optional<ElementType.ElementType.ElementType> {
		return joined.joined
	}
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public var joinedTT: Optional<ElementType.ElementType.ElementType.ElementType> {
		return joined.joined.joined
	}
}

// MARK: - ResultType

extension ResultType where ElementType: ResultType, ElementType.ErrorType == ErrorType, ElementType.ElementType: ResultType, ElementType.ElementType.ErrorType == ErrorType {
	public var joinedT: Result<ElementType.ElementType.ElementType, ErrorType> {
		return joined.joined
	}
}

extension ResultType where ElementType: ResultType, ElementType.ErrorType == ErrorType, ElementType.ElementType: ResultType, ElementType.ElementType.ErrorType == ErrorType, ElementType.ElementType.ElementType: ResultType, ElementType.ElementType.ElementType.ErrorType == ErrorType {
	public var joinedTT: Result<ElementType.ElementType.ElementType.ElementType, ErrorType> {
		return joined.joined.joined
	}
}

// MARK: - WriterType

extension WriterType where ElementType: WriterType, ElementType.LogType == LogType, ElementType.ElementType: WriterType, ElementType.ElementType.LogType == LogType {
	public var joinedT: Writer<ElementType.ElementType.ElementType, LogType> {
		return joined.joined
	}
}

extension WriterType where ElementType: WriterType, ElementType.LogType == LogType, ElementType.ElementType: WriterType, ElementType.ElementType.LogType == LogType, ElementType.ElementType.ElementType: WriterType, ElementType.ElementType.ElementType.LogType == LogType {
	public var joinedTT: Writer<ElementType.ElementType.ElementType.ElementType, LogType> {
		return joined.joined.joined
	}
}

