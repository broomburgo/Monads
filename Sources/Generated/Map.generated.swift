// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `map` definitions; requires `concrete`




import Abstract

infix operator |<^> : FunctorPrecedence
infix operator ||<^> : FunctorPrecedence

// MARK: - ArrayType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Array<B> where A: ArrayType {
    return right.map(left)
}


extension ArrayType where ElementType: ArrayType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Array<Array<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Array<Array<B>> where A: ArrayType, A.ElementType: ArrayType {
	return right.mapT(left)
}


extension ArrayType where ElementType: ArrayType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Array<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Array<Array<B>>> where A: ArrayType, A.ElementType: ArrayType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ArrayType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Array<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Array<Deferred<B>>> where A: ArrayType, A.ElementType: ArrayType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ArrayType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Array<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Array<Effect<B>>> where A: ArrayType, A.ElementType: ArrayType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ArrayType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Array<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Array<Optional<B>>> where A: ArrayType, A.ElementType: ArrayType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ArrayType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Array<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Array<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: ArrayType, A.ElementType: ArrayType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ArrayType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Array<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Array<Result<B,A.ElementType.ElementType.ErrorType>>> where A: ArrayType, A.ElementType: ArrayType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ArrayType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Array<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Array<Writer<B,A.ElementType.ElementType.LogType>>> where A: ArrayType, A.ElementType: ArrayType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: DeferredType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Array<Deferred<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Array<Deferred<B>> where A: ArrayType, A.ElementType: DeferredType {
	return right.mapT(left)
}


extension ArrayType where ElementType: DeferredType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Deferred<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Deferred<Array<B>>> where A: ArrayType, A.ElementType: DeferredType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: DeferredType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Deferred<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Deferred<Deferred<B>>> where A: ArrayType, A.ElementType: DeferredType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: DeferredType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Deferred<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Deferred<Effect<B>>> where A: ArrayType, A.ElementType: DeferredType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: DeferredType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Deferred<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Deferred<Optional<B>>> where A: ArrayType, A.ElementType: DeferredType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: DeferredType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Deferred<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Deferred<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: ArrayType, A.ElementType: DeferredType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: DeferredType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Deferred<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Deferred<Result<B,A.ElementType.ElementType.ErrorType>>> where A: ArrayType, A.ElementType: DeferredType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: DeferredType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Deferred<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Deferred<Writer<B,A.ElementType.ElementType.LogType>>> where A: ArrayType, A.ElementType: DeferredType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: EffectType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Array<Effect<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Array<Effect<B>> where A: ArrayType, A.ElementType: EffectType {
	return right.mapT(left)
}


extension ArrayType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Effect<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Effect<Array<B>>> where A: ArrayType, A.ElementType: EffectType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: EffectType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Effect<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Effect<Deferred<B>>> where A: ArrayType, A.ElementType: EffectType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Effect<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Effect<Effect<B>>> where A: ArrayType, A.ElementType: EffectType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Effect<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Effect<Optional<B>>> where A: ArrayType, A.ElementType: EffectType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: EffectType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Effect<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Effect<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: ArrayType, A.ElementType: EffectType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Effect<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Effect<Result<B,A.ElementType.ElementType.ErrorType>>> where A: ArrayType, A.ElementType: EffectType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Effect<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Effect<Writer<B,A.ElementType.ElementType.LogType>>> where A: ArrayType, A.ElementType: EffectType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: OptionalType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Array<Optional<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Array<Optional<B>> where A: ArrayType, A.ElementType: OptionalType {
	return right.mapT(left)
}


extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Optional<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Optional<Array<B>>> where A: ArrayType, A.ElementType: OptionalType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: OptionalType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Optional<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Optional<Deferred<B>>> where A: ArrayType, A.ElementType: OptionalType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Optional<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Optional<Effect<B>>> where A: ArrayType, A.ElementType: OptionalType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Optional<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Optional<Optional<B>>> where A: ArrayType, A.ElementType: OptionalType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Optional<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Optional<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: ArrayType, A.ElementType: OptionalType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Optional<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Optional<Result<B,A.ElementType.ElementType.ErrorType>>> where A: ArrayType, A.ElementType: OptionalType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Optional<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Optional<Writer<B,A.ElementType.ElementType.LogType>>> where A: ArrayType, A.ElementType: OptionalType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ReaderType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Array<Reader<B,ElementType.EnvironmentType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Array<Reader<B,A.ElementType.EnvironmentType>> where A: ArrayType, A.ElementType: ReaderType {
	return right.mapT(left)
}


extension ArrayType where ElementType: ReaderType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Reader<Array<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Reader<Array<B>,A.ElementType.EnvironmentType>> where A: ArrayType, A.ElementType: ReaderType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ReaderType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Reader<Deferred<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Reader<Deferred<B>,A.ElementType.EnvironmentType>> where A: ArrayType, A.ElementType: ReaderType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ReaderType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Reader<Effect<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Reader<Effect<B>,A.ElementType.EnvironmentType>> where A: ArrayType, A.ElementType: ReaderType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ReaderType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Reader<Optional<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Reader<Optional<B>,A.ElementType.EnvironmentType>> where A: ArrayType, A.ElementType: ReaderType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ReaderType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Reader<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Reader<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.EnvironmentType>> where A: ArrayType, A.ElementType: ReaderType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ReaderType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Reader<Result<B,ElementType.ElementType.ErrorType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Reader<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.EnvironmentType>> where A: ArrayType, A.ElementType: ReaderType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ReaderType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Reader<Writer<B,ElementType.ElementType.LogType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Reader<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.EnvironmentType>> where A: ArrayType, A.ElementType: ReaderType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ResultType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Array<Result<B,ElementType.ErrorType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Array<Result<B,A.ElementType.ErrorType>> where A: ArrayType, A.ElementType: ResultType {
	return right.mapT(left)
}


extension ArrayType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Result<Array<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Result<Array<B>,A.ElementType.ErrorType>> where A: ArrayType, A.ElementType: ResultType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ResultType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Result<Deferred<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Result<Deferred<B>,A.ElementType.ErrorType>> where A: ArrayType, A.ElementType: ResultType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Result<Effect<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Result<Effect<B>,A.ElementType.ErrorType>> where A: ArrayType, A.ElementType: ResultType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Result<Optional<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Result<Optional<B>,A.ElementType.ErrorType>> where A: ArrayType, A.ElementType: ResultType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ResultType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Result<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Result<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.ErrorType>> where A: ArrayType, A.ElementType: ResultType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Result<Result<B,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Result<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.ErrorType>> where A: ArrayType, A.ElementType: ResultType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Result<Writer<B,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Result<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.ErrorType>> where A: ArrayType, A.ElementType: ResultType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: WriterType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Array<Writer<B,ElementType.LogType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Array<Writer<B,A.ElementType.LogType>> where A: ArrayType, A.ElementType: WriterType {
	return right.mapT(left)
}


extension ArrayType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Writer<Array<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Writer<Array<B>,A.ElementType.LogType>> where A: ArrayType, A.ElementType: WriterType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: WriterType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Writer<Deferred<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Writer<Deferred<B>,A.ElementType.LogType>> where A: ArrayType, A.ElementType: WriterType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Writer<Effect<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Writer<Effect<B>,A.ElementType.LogType>> where A: ArrayType, A.ElementType: WriterType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Writer<Optional<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Writer<Optional<B>,A.ElementType.LogType>> where A: ArrayType, A.ElementType: WriterType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: WriterType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Writer<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Writer<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.LogType>> where A: ArrayType, A.ElementType: WriterType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Writer<Result<B,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Writer<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.LogType>> where A: ArrayType, A.ElementType: WriterType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ArrayType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Array<Writer<Writer<B,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Array<Writer<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.LogType>> where A: ArrayType, A.ElementType: WriterType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}

// MARK: - DeferredType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Deferred<B> where A: DeferredType {
    return right.map(left)
}


extension DeferredType where ElementType: ArrayType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Deferred<Array<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Deferred<Array<B>> where A: DeferredType, A.ElementType: ArrayType {
	return right.mapT(left)
}


extension DeferredType where ElementType: ArrayType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Array<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Array<Array<B>>> where A: DeferredType, A.ElementType: ArrayType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ArrayType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Array<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Array<Deferred<B>>> where A: DeferredType, A.ElementType: ArrayType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ArrayType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Array<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Array<Effect<B>>> where A: DeferredType, A.ElementType: ArrayType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ArrayType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Array<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Array<Optional<B>>> where A: DeferredType, A.ElementType: ArrayType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ArrayType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Array<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Array<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: DeferredType, A.ElementType: ArrayType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ArrayType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Array<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Array<Result<B,A.ElementType.ElementType.ErrorType>>> where A: DeferredType, A.ElementType: ArrayType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ArrayType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Array<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Array<Writer<B,A.ElementType.ElementType.LogType>>> where A: DeferredType, A.ElementType: ArrayType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: DeferredType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Deferred<Deferred<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Deferred<Deferred<B>> where A: DeferredType, A.ElementType: DeferredType {
	return right.mapT(left)
}


extension DeferredType where ElementType: DeferredType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Deferred<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Deferred<Array<B>>> where A: DeferredType, A.ElementType: DeferredType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: DeferredType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Deferred<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Deferred<Deferred<B>>> where A: DeferredType, A.ElementType: DeferredType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: DeferredType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Deferred<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Deferred<Effect<B>>> where A: DeferredType, A.ElementType: DeferredType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: DeferredType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Deferred<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Deferred<Optional<B>>> where A: DeferredType, A.ElementType: DeferredType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: DeferredType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Deferred<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Deferred<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: DeferredType, A.ElementType: DeferredType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: DeferredType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Deferred<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Deferred<Result<B,A.ElementType.ElementType.ErrorType>>> where A: DeferredType, A.ElementType: DeferredType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: DeferredType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Deferred<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Deferred<Writer<B,A.ElementType.ElementType.LogType>>> where A: DeferredType, A.ElementType: DeferredType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: EffectType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Deferred<Effect<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Deferred<Effect<B>> where A: DeferredType, A.ElementType: EffectType {
	return right.mapT(left)
}


extension DeferredType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Effect<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Effect<Array<B>>> where A: DeferredType, A.ElementType: EffectType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: EffectType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Effect<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Effect<Deferred<B>>> where A: DeferredType, A.ElementType: EffectType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Effect<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Effect<Effect<B>>> where A: DeferredType, A.ElementType: EffectType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Effect<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Effect<Optional<B>>> where A: DeferredType, A.ElementType: EffectType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: EffectType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Effect<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Effect<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: DeferredType, A.ElementType: EffectType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Effect<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Effect<Result<B,A.ElementType.ElementType.ErrorType>>> where A: DeferredType, A.ElementType: EffectType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Effect<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Effect<Writer<B,A.ElementType.ElementType.LogType>>> where A: DeferredType, A.ElementType: EffectType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: OptionalType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Deferred<Optional<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Deferred<Optional<B>> where A: DeferredType, A.ElementType: OptionalType {
	return right.mapT(left)
}


extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Optional<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Optional<Array<B>>> where A: DeferredType, A.ElementType: OptionalType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: OptionalType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Optional<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Optional<Deferred<B>>> where A: DeferredType, A.ElementType: OptionalType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Optional<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Optional<Effect<B>>> where A: DeferredType, A.ElementType: OptionalType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Optional<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Optional<Optional<B>>> where A: DeferredType, A.ElementType: OptionalType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Optional<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Optional<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: DeferredType, A.ElementType: OptionalType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Optional<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Optional<Result<B,A.ElementType.ElementType.ErrorType>>> where A: DeferredType, A.ElementType: OptionalType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Optional<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Optional<Writer<B,A.ElementType.ElementType.LogType>>> where A: DeferredType, A.ElementType: OptionalType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ReaderType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Deferred<Reader<B,ElementType.EnvironmentType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Deferred<Reader<B,A.ElementType.EnvironmentType>> where A: DeferredType, A.ElementType: ReaderType {
	return right.mapT(left)
}


extension DeferredType where ElementType: ReaderType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Reader<Array<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Reader<Array<B>,A.ElementType.EnvironmentType>> where A: DeferredType, A.ElementType: ReaderType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ReaderType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Reader<Deferred<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Reader<Deferred<B>,A.ElementType.EnvironmentType>> where A: DeferredType, A.ElementType: ReaderType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ReaderType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Reader<Effect<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Reader<Effect<B>,A.ElementType.EnvironmentType>> where A: DeferredType, A.ElementType: ReaderType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ReaderType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Reader<Optional<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Reader<Optional<B>,A.ElementType.EnvironmentType>> where A: DeferredType, A.ElementType: ReaderType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ReaderType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Reader<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Reader<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.EnvironmentType>> where A: DeferredType, A.ElementType: ReaderType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ReaderType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Reader<Result<B,ElementType.ElementType.ErrorType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Reader<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.EnvironmentType>> where A: DeferredType, A.ElementType: ReaderType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ReaderType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Reader<Writer<B,ElementType.ElementType.LogType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Reader<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.EnvironmentType>> where A: DeferredType, A.ElementType: ReaderType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ResultType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Deferred<Result<B,ElementType.ErrorType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Deferred<Result<B,A.ElementType.ErrorType>> where A: DeferredType, A.ElementType: ResultType {
	return right.mapT(left)
}


extension DeferredType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Result<Array<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Result<Array<B>,A.ElementType.ErrorType>> where A: DeferredType, A.ElementType: ResultType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ResultType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Result<Deferred<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Result<Deferred<B>,A.ElementType.ErrorType>> where A: DeferredType, A.ElementType: ResultType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Result<Effect<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Result<Effect<B>,A.ElementType.ErrorType>> where A: DeferredType, A.ElementType: ResultType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Result<Optional<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Result<Optional<B>,A.ElementType.ErrorType>> where A: DeferredType, A.ElementType: ResultType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ResultType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Result<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Result<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.ErrorType>> where A: DeferredType, A.ElementType: ResultType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Result<Result<B,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Result<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.ErrorType>> where A: DeferredType, A.ElementType: ResultType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Result<Writer<B,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Result<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.ErrorType>> where A: DeferredType, A.ElementType: ResultType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: WriterType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Deferred<Writer<B,ElementType.LogType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Deferred<Writer<B,A.ElementType.LogType>> where A: DeferredType, A.ElementType: WriterType {
	return right.mapT(left)
}


extension DeferredType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Writer<Array<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Writer<Array<B>,A.ElementType.LogType>> where A: DeferredType, A.ElementType: WriterType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: WriterType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Writer<Deferred<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Writer<Deferred<B>,A.ElementType.LogType>> where A: DeferredType, A.ElementType: WriterType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Writer<Effect<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Writer<Effect<B>,A.ElementType.LogType>> where A: DeferredType, A.ElementType: WriterType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Writer<Optional<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Writer<Optional<B>,A.ElementType.LogType>> where A: DeferredType, A.ElementType: WriterType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: WriterType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Writer<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Writer<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.LogType>> where A: DeferredType, A.ElementType: WriterType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Writer<Result<B,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Writer<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.LogType>> where A: DeferredType, A.ElementType: WriterType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension DeferredType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Deferred<Writer<Writer<B,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Deferred<Writer<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.LogType>> where A: DeferredType, A.ElementType: WriterType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}

// MARK: - EffectType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Effect<B> where A: EffectType {
    return right.map(left)
}


extension EffectType where ElementType: ArrayType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Effect<Array<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Effect<Array<B>> where A: EffectType, A.ElementType: ArrayType {
	return right.mapT(left)
}


extension EffectType where ElementType: ArrayType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Array<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Array<Array<B>>> where A: EffectType, A.ElementType: ArrayType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ArrayType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Array<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Array<Deferred<B>>> where A: EffectType, A.ElementType: ArrayType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ArrayType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Array<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Array<Effect<B>>> where A: EffectType, A.ElementType: ArrayType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ArrayType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Array<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Array<Optional<B>>> where A: EffectType, A.ElementType: ArrayType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ArrayType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Array<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Array<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: EffectType, A.ElementType: ArrayType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ArrayType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Array<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Array<Result<B,A.ElementType.ElementType.ErrorType>>> where A: EffectType, A.ElementType: ArrayType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ArrayType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Array<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Array<Writer<B,A.ElementType.ElementType.LogType>>> where A: EffectType, A.ElementType: ArrayType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension EffectType where ElementType: DeferredType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Effect<Deferred<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Effect<Deferred<B>> where A: EffectType, A.ElementType: DeferredType {
	return right.mapT(left)
}


extension EffectType where ElementType: DeferredType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Deferred<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Deferred<Array<B>>> where A: EffectType, A.ElementType: DeferredType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension EffectType where ElementType: DeferredType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Deferred<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Deferred<Deferred<B>>> where A: EffectType, A.ElementType: DeferredType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension EffectType where ElementType: DeferredType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Deferred<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Deferred<Effect<B>>> where A: EffectType, A.ElementType: DeferredType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension EffectType where ElementType: DeferredType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Deferred<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Deferred<Optional<B>>> where A: EffectType, A.ElementType: DeferredType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension EffectType where ElementType: DeferredType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Deferred<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Deferred<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: EffectType, A.ElementType: DeferredType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension EffectType where ElementType: DeferredType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Deferred<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Deferred<Result<B,A.ElementType.ElementType.ErrorType>>> where A: EffectType, A.ElementType: DeferredType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension EffectType where ElementType: DeferredType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Deferred<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Deferred<Writer<B,A.ElementType.ElementType.LogType>>> where A: EffectType, A.ElementType: DeferredType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension EffectType where ElementType: EffectType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Effect<Effect<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Effect<Effect<B>> where A: EffectType, A.ElementType: EffectType {
	return right.mapT(left)
}


extension EffectType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Effect<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Effect<Array<B>>> where A: EffectType, A.ElementType: EffectType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension EffectType where ElementType: EffectType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Effect<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Effect<Deferred<B>>> where A: EffectType, A.ElementType: EffectType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Effect<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Effect<Effect<B>>> where A: EffectType, A.ElementType: EffectType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension EffectType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Effect<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Effect<Optional<B>>> where A: EffectType, A.ElementType: EffectType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension EffectType where ElementType: EffectType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Effect<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Effect<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: EffectType, A.ElementType: EffectType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension EffectType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Effect<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Effect<Result<B,A.ElementType.ElementType.ErrorType>>> where A: EffectType, A.ElementType: EffectType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension EffectType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Effect<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Effect<Writer<B,A.ElementType.ElementType.LogType>>> where A: EffectType, A.ElementType: EffectType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension EffectType where ElementType: OptionalType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Effect<Optional<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Effect<Optional<B>> where A: EffectType, A.ElementType: OptionalType {
	return right.mapT(left)
}


extension EffectType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Optional<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Optional<Array<B>>> where A: EffectType, A.ElementType: OptionalType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension EffectType where ElementType: OptionalType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Optional<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Optional<Deferred<B>>> where A: EffectType, A.ElementType: OptionalType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension EffectType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Optional<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Optional<Effect<B>>> where A: EffectType, A.ElementType: OptionalType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension EffectType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Optional<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Optional<Optional<B>>> where A: EffectType, A.ElementType: OptionalType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension EffectType where ElementType: OptionalType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Optional<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Optional<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: EffectType, A.ElementType: OptionalType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension EffectType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Optional<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Optional<Result<B,A.ElementType.ElementType.ErrorType>>> where A: EffectType, A.ElementType: OptionalType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension EffectType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Optional<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Optional<Writer<B,A.ElementType.ElementType.LogType>>> where A: EffectType, A.ElementType: OptionalType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ReaderType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Effect<Reader<B,ElementType.EnvironmentType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Effect<Reader<B,A.ElementType.EnvironmentType>> where A: EffectType, A.ElementType: ReaderType {
	return right.mapT(left)
}


extension EffectType where ElementType: ReaderType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Reader<Array<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Reader<Array<B>,A.ElementType.EnvironmentType>> where A: EffectType, A.ElementType: ReaderType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ReaderType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Reader<Deferred<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Reader<Deferred<B>,A.ElementType.EnvironmentType>> where A: EffectType, A.ElementType: ReaderType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ReaderType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Reader<Effect<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Reader<Effect<B>,A.ElementType.EnvironmentType>> where A: EffectType, A.ElementType: ReaderType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ReaderType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Reader<Optional<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Reader<Optional<B>,A.ElementType.EnvironmentType>> where A: EffectType, A.ElementType: ReaderType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ReaderType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Reader<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Reader<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.EnvironmentType>> where A: EffectType, A.ElementType: ReaderType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ReaderType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Reader<Result<B,ElementType.ElementType.ErrorType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Reader<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.EnvironmentType>> where A: EffectType, A.ElementType: ReaderType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ReaderType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Reader<Writer<B,ElementType.ElementType.LogType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Reader<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.EnvironmentType>> where A: EffectType, A.ElementType: ReaderType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ResultType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Effect<Result<B,ElementType.ErrorType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Effect<Result<B,A.ElementType.ErrorType>> where A: EffectType, A.ElementType: ResultType {
	return right.mapT(left)
}


extension EffectType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Result<Array<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Result<Array<B>,A.ElementType.ErrorType>> where A: EffectType, A.ElementType: ResultType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ResultType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Result<Deferred<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Result<Deferred<B>,A.ElementType.ErrorType>> where A: EffectType, A.ElementType: ResultType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Result<Effect<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Result<Effect<B>,A.ElementType.ErrorType>> where A: EffectType, A.ElementType: ResultType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Result<Optional<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Result<Optional<B>,A.ElementType.ErrorType>> where A: EffectType, A.ElementType: ResultType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ResultType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Result<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Result<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.ErrorType>> where A: EffectType, A.ElementType: ResultType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Result<Result<B,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Result<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.ErrorType>> where A: EffectType, A.ElementType: ResultType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension EffectType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Result<Writer<B,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Result<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.ErrorType>> where A: EffectType, A.ElementType: ResultType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension EffectType where ElementType: WriterType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Effect<Writer<B,ElementType.LogType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Effect<Writer<B,A.ElementType.LogType>> where A: EffectType, A.ElementType: WriterType {
	return right.mapT(left)
}


extension EffectType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Writer<Array<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Writer<Array<B>,A.ElementType.LogType>> where A: EffectType, A.ElementType: WriterType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension EffectType where ElementType: WriterType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Writer<Deferred<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Writer<Deferred<B>,A.ElementType.LogType>> where A: EffectType, A.ElementType: WriterType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension EffectType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Writer<Effect<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Writer<Effect<B>,A.ElementType.LogType>> where A: EffectType, A.ElementType: WriterType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension EffectType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Writer<Optional<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Writer<Optional<B>,A.ElementType.LogType>> where A: EffectType, A.ElementType: WriterType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension EffectType where ElementType: WriterType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Writer<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Writer<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.LogType>> where A: EffectType, A.ElementType: WriterType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension EffectType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Writer<Result<B,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Writer<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.LogType>> where A: EffectType, A.ElementType: WriterType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension EffectType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Effect<Writer<Writer<B,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Effect<Writer<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.LogType>> where A: EffectType, A.ElementType: WriterType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}

// MARK: - OptionalType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Optional<B> where A: OptionalType {
    return right.map(left)
}


extension OptionalType where ElementType: ArrayType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Optional<Array<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Optional<Array<B>> where A: OptionalType, A.ElementType: ArrayType {
	return right.mapT(left)
}


extension OptionalType where ElementType: ArrayType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Array<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Array<Array<B>>> where A: OptionalType, A.ElementType: ArrayType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ArrayType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Array<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Array<Deferred<B>>> where A: OptionalType, A.ElementType: ArrayType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ArrayType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Array<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Array<Effect<B>>> where A: OptionalType, A.ElementType: ArrayType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ArrayType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Array<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Array<Optional<B>>> where A: OptionalType, A.ElementType: ArrayType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ArrayType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Array<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Array<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: OptionalType, A.ElementType: ArrayType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ArrayType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Array<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Array<Result<B,A.ElementType.ElementType.ErrorType>>> where A: OptionalType, A.ElementType: ArrayType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ArrayType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Array<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Array<Writer<B,A.ElementType.ElementType.LogType>>> where A: OptionalType, A.ElementType: ArrayType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: DeferredType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Optional<Deferred<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Optional<Deferred<B>> where A: OptionalType, A.ElementType: DeferredType {
	return right.mapT(left)
}


extension OptionalType where ElementType: DeferredType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Deferred<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Deferred<Array<B>>> where A: OptionalType, A.ElementType: DeferredType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: DeferredType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Deferred<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Deferred<Deferred<B>>> where A: OptionalType, A.ElementType: DeferredType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: DeferredType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Deferred<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Deferred<Effect<B>>> where A: OptionalType, A.ElementType: DeferredType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: DeferredType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Deferred<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Deferred<Optional<B>>> where A: OptionalType, A.ElementType: DeferredType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: DeferredType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Deferred<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Deferred<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: OptionalType, A.ElementType: DeferredType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: DeferredType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Deferred<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Deferred<Result<B,A.ElementType.ElementType.ErrorType>>> where A: OptionalType, A.ElementType: DeferredType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: DeferredType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Deferred<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Deferred<Writer<B,A.ElementType.ElementType.LogType>>> where A: OptionalType, A.ElementType: DeferredType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: EffectType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Optional<Effect<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Optional<Effect<B>> where A: OptionalType, A.ElementType: EffectType {
	return right.mapT(left)
}


extension OptionalType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Effect<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Effect<Array<B>>> where A: OptionalType, A.ElementType: EffectType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: EffectType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Effect<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Effect<Deferred<B>>> where A: OptionalType, A.ElementType: EffectType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Effect<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Effect<Effect<B>>> where A: OptionalType, A.ElementType: EffectType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Effect<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Effect<Optional<B>>> where A: OptionalType, A.ElementType: EffectType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: EffectType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Effect<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Effect<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: OptionalType, A.ElementType: EffectType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Effect<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Effect<Result<B,A.ElementType.ElementType.ErrorType>>> where A: OptionalType, A.ElementType: EffectType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Effect<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Effect<Writer<B,A.ElementType.ElementType.LogType>>> where A: OptionalType, A.ElementType: EffectType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: OptionalType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Optional<Optional<B>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Optional<Optional<B>> where A: OptionalType, A.ElementType: OptionalType {
	return right.mapT(left)
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Optional<Array<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Optional<Array<B>>> where A: OptionalType, A.ElementType: OptionalType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Optional<Deferred<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Optional<Deferred<B>>> where A: OptionalType, A.ElementType: OptionalType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Optional<Effect<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Optional<Effect<B>>> where A: OptionalType, A.ElementType: OptionalType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Optional<Optional<B>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Optional<Optional<B>>> where A: OptionalType, A.ElementType: OptionalType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Optional<Reader<B,ElementType.ElementType.EnvironmentType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Optional<Reader<B,A.ElementType.ElementType.EnvironmentType>>> where A: OptionalType, A.ElementType: OptionalType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Optional<Result<B,ElementType.ElementType.ErrorType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Optional<Result<B,A.ElementType.ElementType.ErrorType>>> where A: OptionalType, A.ElementType: OptionalType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Optional<Writer<B,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Optional<Writer<B,A.ElementType.ElementType.LogType>>> where A: OptionalType, A.ElementType: OptionalType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ReaderType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Optional<Reader<B,ElementType.EnvironmentType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Optional<Reader<B,A.ElementType.EnvironmentType>> where A: OptionalType, A.ElementType: ReaderType {
	return right.mapT(left)
}


extension OptionalType where ElementType: ReaderType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Reader<Array<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Reader<Array<B>,A.ElementType.EnvironmentType>> where A: OptionalType, A.ElementType: ReaderType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ReaderType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Reader<Deferred<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Reader<Deferred<B>,A.ElementType.EnvironmentType>> where A: OptionalType, A.ElementType: ReaderType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ReaderType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Reader<Effect<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Reader<Effect<B>,A.ElementType.EnvironmentType>> where A: OptionalType, A.ElementType: ReaderType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ReaderType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Reader<Optional<B>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Reader<Optional<B>,A.ElementType.EnvironmentType>> where A: OptionalType, A.ElementType: ReaderType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ReaderType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Reader<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Reader<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.EnvironmentType>> where A: OptionalType, A.ElementType: ReaderType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ReaderType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Reader<Result<B,ElementType.ElementType.ErrorType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Reader<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.EnvironmentType>> where A: OptionalType, A.ElementType: ReaderType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ReaderType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Reader<Writer<B,ElementType.ElementType.LogType>,ElementType.EnvironmentType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Reader<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.EnvironmentType>> where A: OptionalType, A.ElementType: ReaderType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ResultType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Optional<Result<B,ElementType.ErrorType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Optional<Result<B,A.ElementType.ErrorType>> where A: OptionalType, A.ElementType: ResultType {
	return right.mapT(left)
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Result<Array<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Result<Array<B>,A.ElementType.ErrorType>> where A: OptionalType, A.ElementType: ResultType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Result<Deferred<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Result<Deferred<B>,A.ElementType.ErrorType>> where A: OptionalType, A.ElementType: ResultType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Result<Effect<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Result<Effect<B>,A.ElementType.ErrorType>> where A: OptionalType, A.ElementType: ResultType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Result<Optional<B>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Result<Optional<B>,A.ElementType.ErrorType>> where A: OptionalType, A.ElementType: ResultType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Result<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Result<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.ErrorType>> where A: OptionalType, A.ElementType: ResultType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Result<Result<B,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Result<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.ErrorType>> where A: OptionalType, A.ElementType: ResultType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Result<Writer<B,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Result<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.ErrorType>> where A: OptionalType, A.ElementType: ResultType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: WriterType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Optional<Writer<B,ElementType.LogType>> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Optional<Writer<B,A.ElementType.LogType>> where A: OptionalType, A.ElementType: WriterType {
	return right.mapT(left)
}


extension OptionalType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Writer<Array<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Writer<Array<B>,A.ElementType.LogType>> where A: OptionalType, A.ElementType: WriterType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: WriterType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Writer<Deferred<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Writer<Deferred<B>,A.ElementType.LogType>> where A: OptionalType, A.ElementType: WriterType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Writer<Effect<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Writer<Effect<B>,A.ElementType.LogType>> where A: OptionalType, A.ElementType: WriterType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Writer<Optional<B>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Writer<Optional<B>,A.ElementType.LogType>> where A: OptionalType, A.ElementType: WriterType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: WriterType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Writer<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Writer<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.LogType>> where A: OptionalType, A.ElementType: WriterType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Writer<Result<B,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Writer<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.LogType>> where A: OptionalType, A.ElementType: WriterType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Optional<Writer<Writer<B,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Optional<Writer<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.LogType>> where A: OptionalType, A.ElementType: WriterType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}

// MARK: - ReaderType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Reader<B,A.EnvironmentType> where A: ReaderType {
    return right.map(left)
}


extension ReaderType where ElementType: ArrayType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Reader<Array<B>,EnvironmentType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Reader<Array<B>,A.EnvironmentType> where A: ReaderType, A.ElementType: ArrayType {
	return right.mapT(left)
}


extension ReaderType where ElementType: ArrayType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Array<Array<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Array<Array<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: ArrayType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ArrayType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Array<Deferred<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Array<Deferred<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: ArrayType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ArrayType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Array<Effect<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Array<Effect<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: ArrayType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ArrayType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Array<Optional<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Array<Optional<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: ArrayType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ArrayType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Array<Reader<B,ElementType.ElementType.EnvironmentType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Array<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: ArrayType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ArrayType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Array<Result<B,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Array<Result<B,A.ElementType.ElementType.ErrorType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: ArrayType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ArrayType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Array<Writer<B,ElementType.ElementType.LogType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Array<Writer<B,A.ElementType.ElementType.LogType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: ArrayType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: DeferredType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Reader<Deferred<B>,EnvironmentType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Reader<Deferred<B>,A.EnvironmentType> where A: ReaderType, A.ElementType: DeferredType {
	return right.mapT(left)
}


extension ReaderType where ElementType: DeferredType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Deferred<Array<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Deferred<Array<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: DeferredType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: DeferredType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Deferred<Deferred<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Deferred<Deferred<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: DeferredType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: DeferredType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Deferred<Effect<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Deferred<Effect<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: DeferredType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: DeferredType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Deferred<Optional<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Deferred<Optional<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: DeferredType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: DeferredType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Deferred<Reader<B,ElementType.ElementType.EnvironmentType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Deferred<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: DeferredType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: DeferredType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Deferred<Result<B,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Deferred<Result<B,A.ElementType.ElementType.ErrorType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: DeferredType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: DeferredType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Deferred<Writer<B,ElementType.ElementType.LogType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Deferred<Writer<B,A.ElementType.ElementType.LogType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: DeferredType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: EffectType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Reader<Effect<B>,EnvironmentType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Reader<Effect<B>,A.EnvironmentType> where A: ReaderType, A.ElementType: EffectType {
	return right.mapT(left)
}


extension ReaderType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Effect<Array<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Effect<Array<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: EffectType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: EffectType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Effect<Deferred<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Effect<Deferred<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: EffectType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Effect<Effect<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Effect<Effect<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: EffectType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Effect<Optional<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Effect<Optional<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: EffectType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: EffectType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Effect<Reader<B,ElementType.ElementType.EnvironmentType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Effect<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: EffectType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Effect<Result<B,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Effect<Result<B,A.ElementType.ElementType.ErrorType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: EffectType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Effect<Writer<B,ElementType.ElementType.LogType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Effect<Writer<B,A.ElementType.ElementType.LogType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: EffectType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: OptionalType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Reader<Optional<B>,EnvironmentType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Reader<Optional<B>,A.EnvironmentType> where A: ReaderType, A.ElementType: OptionalType {
	return right.mapT(left)
}


extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Optional<Array<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Optional<Array<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: OptionalType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: OptionalType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Optional<Deferred<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Optional<Deferred<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: OptionalType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Optional<Effect<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Optional<Effect<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: OptionalType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Optional<Optional<B>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Optional<Optional<B>>,A.EnvironmentType> where A: ReaderType, A.ElementType: OptionalType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Optional<Reader<B,ElementType.ElementType.EnvironmentType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Optional<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: OptionalType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Optional<Result<B,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Optional<Result<B,A.ElementType.ElementType.ErrorType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: OptionalType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Optional<Writer<B,ElementType.ElementType.LogType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Optional<Writer<B,A.ElementType.ElementType.LogType>>,A.EnvironmentType> where A: ReaderType, A.ElementType: OptionalType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ReaderType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Reader<Reader<B,ElementType.EnvironmentType>,EnvironmentType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Reader<Reader<B,A.ElementType.EnvironmentType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ReaderType {
	return right.mapT(left)
}


extension ReaderType where ElementType: ReaderType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Reader<Array<B>,ElementType.EnvironmentType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Reader<Array<B>,A.ElementType.EnvironmentType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ReaderType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ReaderType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Reader<Deferred<B>,ElementType.EnvironmentType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Reader<Deferred<B>,A.ElementType.EnvironmentType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ReaderType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ReaderType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Reader<Effect<B>,ElementType.EnvironmentType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Reader<Effect<B>,A.ElementType.EnvironmentType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ReaderType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ReaderType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Reader<Optional<B>,ElementType.EnvironmentType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Reader<Optional<B>,A.ElementType.EnvironmentType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ReaderType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ReaderType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Reader<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.EnvironmentType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Reader<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.EnvironmentType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ReaderType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ReaderType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Reader<Result<B,ElementType.ElementType.ErrorType>,ElementType.EnvironmentType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Reader<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.EnvironmentType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ReaderType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ReaderType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Reader<Writer<B,ElementType.ElementType.LogType>,ElementType.EnvironmentType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Reader<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.EnvironmentType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ReaderType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ResultType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Reader<Result<B,ElementType.ErrorType>,EnvironmentType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Reader<Result<B,A.ElementType.ErrorType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ResultType {
	return right.mapT(left)
}


extension ReaderType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Result<Array<B>,ElementType.ErrorType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Result<Array<B>,A.ElementType.ErrorType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ResultType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ResultType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Result<Deferred<B>,ElementType.ErrorType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Result<Deferred<B>,A.ElementType.ErrorType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ResultType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Result<Effect<B>,ElementType.ErrorType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Result<Effect<B>,A.ElementType.ErrorType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ResultType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Result<Optional<B>,ElementType.ErrorType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Result<Optional<B>,A.ElementType.ErrorType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ResultType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ResultType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Result<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.ErrorType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Result<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.ErrorType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ResultType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Result<Result<B,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Result<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.ErrorType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ResultType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Result<Writer<B,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Result<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.ErrorType>,A.EnvironmentType> where A: ReaderType, A.ElementType: ResultType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: WriterType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Reader<Writer<B,ElementType.LogType>,EnvironmentType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Reader<Writer<B,A.ElementType.LogType>,A.EnvironmentType> where A: ReaderType, A.ElementType: WriterType {
	return right.mapT(left)
}


extension ReaderType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Writer<Array<B>,ElementType.LogType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Writer<Array<B>,A.ElementType.LogType>,A.EnvironmentType> where A: ReaderType, A.ElementType: WriterType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: WriterType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Writer<Deferred<B>,ElementType.LogType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Writer<Deferred<B>,A.ElementType.LogType>,A.EnvironmentType> where A: ReaderType, A.ElementType: WriterType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Writer<Effect<B>,ElementType.LogType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Writer<Effect<B>,A.ElementType.LogType>,A.EnvironmentType> where A: ReaderType, A.ElementType: WriterType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Writer<Optional<B>,ElementType.LogType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Writer<Optional<B>,A.ElementType.LogType>,A.EnvironmentType> where A: ReaderType, A.ElementType: WriterType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: WriterType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Writer<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.LogType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Writer<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.LogType>,A.EnvironmentType> where A: ReaderType, A.ElementType: WriterType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Writer<Result<B,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Writer<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.LogType>,A.EnvironmentType> where A: ReaderType, A.ElementType: WriterType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ReaderType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Reader<Writer<Writer<B,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Reader<Writer<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.LogType>,A.EnvironmentType> where A: ReaderType, A.ElementType: WriterType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}

// MARK: - ResultType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Result<B,A.ErrorType> where A: ResultType {
    return right.map(left)
}


extension ResultType where ElementType: ArrayType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Result<Array<B>,ErrorType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Result<Array<B>,A.ErrorType> where A: ResultType, A.ElementType: ArrayType {
	return right.mapT(left)
}


extension ResultType where ElementType: ArrayType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Array<Array<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Array<Array<B>>,A.ErrorType> where A: ResultType, A.ElementType: ArrayType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ArrayType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Array<Deferred<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Array<Deferred<B>>,A.ErrorType> where A: ResultType, A.ElementType: ArrayType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ArrayType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Array<Effect<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Array<Effect<B>>,A.ErrorType> where A: ResultType, A.ElementType: ArrayType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ArrayType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Array<Optional<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Array<Optional<B>>,A.ErrorType> where A: ResultType, A.ElementType: ArrayType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ArrayType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Array<Reader<B,ElementType.ElementType.EnvironmentType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Array<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.ErrorType> where A: ResultType, A.ElementType: ArrayType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ArrayType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Array<Result<B,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Array<Result<B,A.ElementType.ElementType.ErrorType>>,A.ErrorType> where A: ResultType, A.ElementType: ArrayType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ArrayType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Array<Writer<B,ElementType.ElementType.LogType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Array<Writer<B,A.ElementType.ElementType.LogType>>,A.ErrorType> where A: ResultType, A.ElementType: ArrayType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ResultType where ElementType: DeferredType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Result<Deferred<B>,ErrorType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Result<Deferred<B>,A.ErrorType> where A: ResultType, A.ElementType: DeferredType {
	return right.mapT(left)
}


extension ResultType where ElementType: DeferredType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Deferred<Array<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Deferred<Array<B>>,A.ErrorType> where A: ResultType, A.ElementType: DeferredType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ResultType where ElementType: DeferredType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Deferred<Deferred<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Deferred<Deferred<B>>,A.ErrorType> where A: ResultType, A.ElementType: DeferredType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ResultType where ElementType: DeferredType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Deferred<Effect<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Deferred<Effect<B>>,A.ErrorType> where A: ResultType, A.ElementType: DeferredType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ResultType where ElementType: DeferredType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Deferred<Optional<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Deferred<Optional<B>>,A.ErrorType> where A: ResultType, A.ElementType: DeferredType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ResultType where ElementType: DeferredType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Deferred<Reader<B,ElementType.ElementType.EnvironmentType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Deferred<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.ErrorType> where A: ResultType, A.ElementType: DeferredType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ResultType where ElementType: DeferredType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Deferred<Result<B,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Deferred<Result<B,A.ElementType.ElementType.ErrorType>>,A.ErrorType> where A: ResultType, A.ElementType: DeferredType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ResultType where ElementType: DeferredType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Deferred<Writer<B,ElementType.ElementType.LogType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Deferred<Writer<B,A.ElementType.ElementType.LogType>>,A.ErrorType> where A: ResultType, A.ElementType: DeferredType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ResultType where ElementType: EffectType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Result<Effect<B>,ErrorType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Result<Effect<B>,A.ErrorType> where A: ResultType, A.ElementType: EffectType {
	return right.mapT(left)
}


extension ResultType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Effect<Array<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Effect<Array<B>>,A.ErrorType> where A: ResultType, A.ElementType: EffectType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ResultType where ElementType: EffectType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Effect<Deferred<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Effect<Deferred<B>>,A.ErrorType> where A: ResultType, A.ElementType: EffectType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ResultType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Effect<Effect<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Effect<Effect<B>>,A.ErrorType> where A: ResultType, A.ElementType: EffectType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ResultType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Effect<Optional<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Effect<Optional<B>>,A.ErrorType> where A: ResultType, A.ElementType: EffectType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ResultType where ElementType: EffectType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Effect<Reader<B,ElementType.ElementType.EnvironmentType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Effect<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.ErrorType> where A: ResultType, A.ElementType: EffectType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ResultType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Effect<Result<B,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Effect<Result<B,A.ElementType.ElementType.ErrorType>>,A.ErrorType> where A: ResultType, A.ElementType: EffectType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ResultType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Effect<Writer<B,ElementType.ElementType.LogType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Effect<Writer<B,A.ElementType.ElementType.LogType>>,A.ErrorType> where A: ResultType, A.ElementType: EffectType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ResultType where ElementType: OptionalType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Result<Optional<B>,ErrorType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Result<Optional<B>,A.ErrorType> where A: ResultType, A.ElementType: OptionalType {
	return right.mapT(left)
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Optional<Array<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Optional<Array<B>>,A.ErrorType> where A: ResultType, A.ElementType: OptionalType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Optional<Deferred<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Optional<Deferred<B>>,A.ErrorType> where A: ResultType, A.ElementType: OptionalType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Optional<Effect<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Optional<Effect<B>>,A.ErrorType> where A: ResultType, A.ElementType: OptionalType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Optional<Optional<B>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Optional<Optional<B>>,A.ErrorType> where A: ResultType, A.ElementType: OptionalType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Optional<Reader<B,ElementType.ElementType.EnvironmentType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Optional<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.ErrorType> where A: ResultType, A.ElementType: OptionalType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Optional<Result<B,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Optional<Result<B,A.ElementType.ElementType.ErrorType>>,A.ErrorType> where A: ResultType, A.ElementType: OptionalType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Optional<Writer<B,ElementType.ElementType.LogType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Optional<Writer<B,A.ElementType.ElementType.LogType>>,A.ErrorType> where A: ResultType, A.ElementType: OptionalType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ReaderType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Result<Reader<B,ElementType.EnvironmentType>,ErrorType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Result<Reader<B,A.ElementType.EnvironmentType>,A.ErrorType> where A: ResultType, A.ElementType: ReaderType {
	return right.mapT(left)
}


extension ResultType where ElementType: ReaderType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Reader<Array<B>,ElementType.EnvironmentType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Reader<Array<B>,A.ElementType.EnvironmentType>,A.ErrorType> where A: ResultType, A.ElementType: ReaderType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ReaderType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Reader<Deferred<B>,ElementType.EnvironmentType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Reader<Deferred<B>,A.ElementType.EnvironmentType>,A.ErrorType> where A: ResultType, A.ElementType: ReaderType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ReaderType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Reader<Effect<B>,ElementType.EnvironmentType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Reader<Effect<B>,A.ElementType.EnvironmentType>,A.ErrorType> where A: ResultType, A.ElementType: ReaderType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ReaderType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Reader<Optional<B>,ElementType.EnvironmentType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Reader<Optional<B>,A.ElementType.EnvironmentType>,A.ErrorType> where A: ResultType, A.ElementType: ReaderType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ReaderType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Reader<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.EnvironmentType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Reader<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.EnvironmentType>,A.ErrorType> where A: ResultType, A.ElementType: ReaderType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ReaderType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Reader<Result<B,ElementType.ElementType.ErrorType>,ElementType.EnvironmentType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Reader<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.EnvironmentType>,A.ErrorType> where A: ResultType, A.ElementType: ReaderType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ReaderType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Reader<Writer<B,ElementType.ElementType.LogType>,ElementType.EnvironmentType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Reader<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.EnvironmentType>,A.ErrorType> where A: ResultType, A.ElementType: ReaderType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ResultType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Result<Result<B,ElementType.ErrorType>,ErrorType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Result<Result<B,A.ElementType.ErrorType>,A.ErrorType> where A: ResultType, A.ElementType: ResultType {
	return right.mapT(left)
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Result<Array<B>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Result<Array<B>,A.ElementType.ErrorType>,A.ErrorType> where A: ResultType, A.ElementType: ResultType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Result<Deferred<B>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Result<Deferred<B>,A.ElementType.ErrorType>,A.ErrorType> where A: ResultType, A.ElementType: ResultType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Result<Effect<B>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Result<Effect<B>,A.ElementType.ErrorType>,A.ErrorType> where A: ResultType, A.ElementType: ResultType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Result<Optional<B>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Result<Optional<B>,A.ElementType.ErrorType>,A.ErrorType> where A: ResultType, A.ElementType: ResultType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Result<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Result<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.ErrorType>,A.ErrorType> where A: ResultType, A.ElementType: ResultType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Result<Result<B,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Result<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.ErrorType>,A.ErrorType> where A: ResultType, A.ElementType: ResultType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Result<Writer<B,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Result<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.ErrorType>,A.ErrorType> where A: ResultType, A.ElementType: ResultType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension ResultType where ElementType: WriterType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Result<Writer<B,ElementType.LogType>,ErrorType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Result<Writer<B,A.ElementType.LogType>,A.ErrorType> where A: ResultType, A.ElementType: WriterType {
	return right.mapT(left)
}


extension ResultType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Writer<Array<B>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Writer<Array<B>,A.ElementType.LogType>,A.ErrorType> where A: ResultType, A.ElementType: WriterType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension ResultType where ElementType: WriterType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Writer<Deferred<B>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Writer<Deferred<B>,A.ElementType.LogType>,A.ErrorType> where A: ResultType, A.ElementType: WriterType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension ResultType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Writer<Effect<B>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Writer<Effect<B>,A.ElementType.LogType>,A.ErrorType> where A: ResultType, A.ElementType: WriterType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Writer<Optional<B>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Writer<Optional<B>,A.ElementType.LogType>,A.ErrorType> where A: ResultType, A.ElementType: WriterType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension ResultType where ElementType: WriterType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Writer<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Writer<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.LogType>,A.ErrorType> where A: ResultType, A.ElementType: WriterType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Writer<Result<B,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Writer<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.LogType>,A.ErrorType> where A: ResultType, A.ElementType: WriterType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Result<Writer<Writer<B,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Result<Writer<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.LogType>,A.ErrorType> where A: ResultType, A.ElementType: WriterType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}

// MARK: - WriterType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Writer<B,A.LogType> where A: WriterType {
    return right.map(left)
}


extension WriterType where ElementType: ArrayType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Writer<Array<B>,LogType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Writer<Array<B>,A.LogType> where A: WriterType, A.ElementType: ArrayType {
	return right.mapT(left)
}


extension WriterType where ElementType: ArrayType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Array<Array<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Array<Array<B>>,A.LogType> where A: WriterType, A.ElementType: ArrayType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ArrayType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Array<Deferred<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Array<Deferred<B>>,A.LogType> where A: WriterType, A.ElementType: ArrayType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ArrayType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Array<Effect<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Array<Effect<B>>,A.LogType> where A: WriterType, A.ElementType: ArrayType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ArrayType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Array<Optional<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Array<Optional<B>>,A.LogType> where A: WriterType, A.ElementType: ArrayType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ArrayType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Array<Reader<B,ElementType.ElementType.EnvironmentType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Array<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.LogType> where A: WriterType, A.ElementType: ArrayType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ArrayType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Array<Result<B,ElementType.ElementType.ErrorType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Array<Result<B,A.ElementType.ElementType.ErrorType>>,A.LogType> where A: WriterType, A.ElementType: ArrayType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ArrayType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Array<Writer<B,ElementType.ElementType.LogType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Array<Writer<B,A.ElementType.ElementType.LogType>>,A.LogType> where A: WriterType, A.ElementType: ArrayType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension WriterType where ElementType: DeferredType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Writer<Deferred<B>,LogType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Writer<Deferred<B>,A.LogType> where A: WriterType, A.ElementType: DeferredType {
	return right.mapT(left)
}


extension WriterType where ElementType: DeferredType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Deferred<Array<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Deferred<Array<B>>,A.LogType> where A: WriterType, A.ElementType: DeferredType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension WriterType where ElementType: DeferredType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Deferred<Deferred<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Deferred<Deferred<B>>,A.LogType> where A: WriterType, A.ElementType: DeferredType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension WriterType where ElementType: DeferredType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Deferred<Effect<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Deferred<Effect<B>>,A.LogType> where A: WriterType, A.ElementType: DeferredType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension WriterType where ElementType: DeferredType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Deferred<Optional<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Deferred<Optional<B>>,A.LogType> where A: WriterType, A.ElementType: DeferredType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension WriterType where ElementType: DeferredType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Deferred<Reader<B,ElementType.ElementType.EnvironmentType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Deferred<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.LogType> where A: WriterType, A.ElementType: DeferredType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension WriterType where ElementType: DeferredType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Deferred<Result<B,ElementType.ElementType.ErrorType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Deferred<Result<B,A.ElementType.ElementType.ErrorType>>,A.LogType> where A: WriterType, A.ElementType: DeferredType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension WriterType where ElementType: DeferredType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Deferred<Writer<B,ElementType.ElementType.LogType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Deferred<Writer<B,A.ElementType.ElementType.LogType>>,A.LogType> where A: WriterType, A.ElementType: DeferredType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension WriterType where ElementType: EffectType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Writer<Effect<B>,LogType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Writer<Effect<B>,A.LogType> where A: WriterType, A.ElementType: EffectType {
	return right.mapT(left)
}


extension WriterType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Effect<Array<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Effect<Array<B>>,A.LogType> where A: WriterType, A.ElementType: EffectType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension WriterType where ElementType: EffectType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Effect<Deferred<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Effect<Deferred<B>>,A.LogType> where A: WriterType, A.ElementType: EffectType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension WriterType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Effect<Effect<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Effect<Effect<B>>,A.LogType> where A: WriterType, A.ElementType: EffectType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension WriterType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Effect<Optional<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Effect<Optional<B>>,A.LogType> where A: WriterType, A.ElementType: EffectType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension WriterType where ElementType: EffectType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Effect<Reader<B,ElementType.ElementType.EnvironmentType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Effect<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.LogType> where A: WriterType, A.ElementType: EffectType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension WriterType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Effect<Result<B,ElementType.ElementType.ErrorType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Effect<Result<B,A.ElementType.ElementType.ErrorType>>,A.LogType> where A: WriterType, A.ElementType: EffectType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension WriterType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Effect<Writer<B,ElementType.ElementType.LogType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Effect<Writer<B,A.ElementType.ElementType.LogType>>,A.LogType> where A: WriterType, A.ElementType: EffectType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension WriterType where ElementType: OptionalType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Writer<Optional<B>,LogType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Writer<Optional<B>,A.LogType> where A: WriterType, A.ElementType: OptionalType {
	return right.mapT(left)
}


extension WriterType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Optional<Array<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Optional<Array<B>>,A.LogType> where A: WriterType, A.ElementType: OptionalType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension WriterType where ElementType: OptionalType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Optional<Deferred<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Optional<Deferred<B>>,A.LogType> where A: WriterType, A.ElementType: OptionalType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension WriterType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Optional<Effect<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Optional<Effect<B>>,A.LogType> where A: WriterType, A.ElementType: OptionalType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Optional<Optional<B>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Optional<Optional<B>>,A.LogType> where A: WriterType, A.ElementType: OptionalType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension WriterType where ElementType: OptionalType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Optional<Reader<B,ElementType.ElementType.EnvironmentType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Optional<Reader<B,A.ElementType.ElementType.EnvironmentType>>,A.LogType> where A: WriterType, A.ElementType: OptionalType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Optional<Result<B,ElementType.ElementType.ErrorType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Optional<Result<B,A.ElementType.ElementType.ErrorType>>,A.LogType> where A: WriterType, A.ElementType: OptionalType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Optional<Writer<B,ElementType.ElementType.LogType>>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Optional<Writer<B,A.ElementType.ElementType.LogType>>,A.LogType> where A: WriterType, A.ElementType: OptionalType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ReaderType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Writer<Reader<B,ElementType.EnvironmentType>,LogType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Writer<Reader<B,A.ElementType.EnvironmentType>,A.LogType> where A: WriterType, A.ElementType: ReaderType {
	return right.mapT(left)
}


extension WriterType where ElementType: ReaderType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Reader<Array<B>,ElementType.EnvironmentType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Reader<Array<B>,A.ElementType.EnvironmentType>,A.LogType> where A: WriterType, A.ElementType: ReaderType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ReaderType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Reader<Deferred<B>,ElementType.EnvironmentType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Reader<Deferred<B>,A.ElementType.EnvironmentType>,A.LogType> where A: WriterType, A.ElementType: ReaderType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ReaderType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Reader<Effect<B>,ElementType.EnvironmentType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Reader<Effect<B>,A.ElementType.EnvironmentType>,A.LogType> where A: WriterType, A.ElementType: ReaderType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ReaderType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Reader<Optional<B>,ElementType.EnvironmentType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Reader<Optional<B>,A.ElementType.EnvironmentType>,A.LogType> where A: WriterType, A.ElementType: ReaderType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ReaderType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Reader<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.EnvironmentType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Reader<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.EnvironmentType>,A.LogType> where A: WriterType, A.ElementType: ReaderType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ReaderType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Reader<Result<B,ElementType.ElementType.ErrorType>,ElementType.EnvironmentType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Reader<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.EnvironmentType>,A.LogType> where A: WriterType, A.ElementType: ReaderType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ReaderType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Reader<Writer<B,ElementType.ElementType.LogType>,ElementType.EnvironmentType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Reader<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.EnvironmentType>,A.LogType> where A: WriterType, A.ElementType: ReaderType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ResultType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Writer<Result<B,ElementType.ErrorType>,LogType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Writer<Result<B,A.ElementType.ErrorType>,A.LogType> where A: WriterType, A.ElementType: ResultType {
	return right.mapT(left)
}


extension WriterType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Result<Array<B>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Result<Array<B>,A.ElementType.ErrorType>,A.LogType> where A: WriterType, A.ElementType: ResultType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ResultType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Result<Deferred<B>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Result<Deferred<B>,A.ElementType.ErrorType>,A.LogType> where A: WriterType, A.ElementType: ResultType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Result<Effect<B>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Result<Effect<B>,A.ElementType.ErrorType>,A.LogType> where A: WriterType, A.ElementType: ResultType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Result<Optional<B>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Result<Optional<B>,A.ElementType.ErrorType>,A.LogType> where A: WriterType, A.ElementType: ResultType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ResultType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Result<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Result<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.ErrorType>,A.LogType> where A: WriterType, A.ElementType: ResultType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Result<Result<B,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Result<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.ErrorType>,A.LogType> where A: WriterType, A.ElementType: ResultType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Result<Writer<B,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Result<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.ErrorType>,A.LogType> where A: WriterType, A.ElementType: ResultType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}


extension WriterType where ElementType: WriterType {
	public func mapT <B> (_ transform: @escaping (ElementType.ElementType) -> B) -> Writer<Writer<B,ElementType.LogType>,LogType> {
		return map { $0.map(transform) }
	}
}

public func |<^> <A,B> (left: @escaping (A.ElementType.ElementType) -> B, right: A) -> Writer<Writer<B,A.ElementType.LogType>,A.LogType> where A: WriterType, A.ElementType: WriterType {
	return right.mapT(left)
}


extension WriterType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Writer<Array<B>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Writer<Array<B>,A.ElementType.LogType>,A.LogType> where A: WriterType, A.ElementType: WriterType, A.ElementType.ElementType: ArrayType {
	return right.mapTT(left)
}


extension WriterType where ElementType: WriterType, ElementType.ElementType: DeferredType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Writer<Deferred<B>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Writer<Deferred<B>,A.ElementType.LogType>,A.LogType> where A: WriterType, A.ElementType: WriterType, A.ElementType.ElementType: DeferredType {
	return right.mapTT(left)
}


extension WriterType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Writer<Effect<B>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Writer<Effect<B>,A.ElementType.LogType>,A.LogType> where A: WriterType, A.ElementType: WriterType, A.ElementType.ElementType: EffectType {
	return right.mapTT(left)
}


extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Writer<Optional<B>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Writer<Optional<B>,A.ElementType.LogType>,A.LogType> where A: WriterType, A.ElementType: WriterType, A.ElementType.ElementType: OptionalType {
	return right.mapTT(left)
}


extension WriterType where ElementType: WriterType, ElementType.ElementType: ReaderType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Writer<Reader<B,ElementType.ElementType.EnvironmentType>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Writer<Reader<B,A.ElementType.ElementType.EnvironmentType>,A.ElementType.LogType>,A.LogType> where A: WriterType, A.ElementType: WriterType, A.ElementType.ElementType: ReaderType {
	return right.mapTT(left)
}


extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Writer<Result<B,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Writer<Result<B,A.ElementType.ElementType.ErrorType>,A.ElementType.LogType>,A.LogType> where A: WriterType, A.ElementType: WriterType, A.ElementType.ElementType: ResultType {
	return right.mapTT(left)
}


extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <B> (_ transform: @escaping (ElementType.ElementType.ElementType) -> B) -> Writer<Writer<Writer<B,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}
}

public func ||<^> <A,B> (left: @escaping (A.ElementType.ElementType.ElementType) -> B, right: A) -> Writer<Writer<Writer<B,A.ElementType.ElementType.LogType>,A.ElementType.LogType>,A.LogType> where A: WriterType, A.ElementType: WriterType, A.ElementType.ElementType: WriterType {
	return right.mapTT(left)
}

