// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `ResultType`; requires `concrete`




// MARK: - Level 1 Transformer

extension ArrayType where ElementType: ResultType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Array<Result<A,ElementType.ErrorType>>) -> Array<Result<A,ElementType.ErrorType>> {
		return flatMap { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Result.failure($0)) },
			ifCancel: { Array.init(Result.cancel) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Array<Result<A,T.ElementType.ErrorType>>) -> Array<Result<A,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType {
	return object.flatMapT(transform)
}

extension DeferredType where ElementType: ResultType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Deferred<Result<A,ElementType.ErrorType>>) -> Deferred<Result<A,ElementType.ErrorType>> {
		return flatMap { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Result.failure($0)) },
			ifCancel: { Deferred.init(Result.cancel) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Deferred<Result<A,T.ElementType.ErrorType>>) -> Deferred<Result<A,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType {
	return object.flatMapT(transform)
}

extension EffectType where ElementType: ResultType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Effect<Result<A,ElementType.ErrorType>>) -> Effect<Result<A,ElementType.ErrorType>> {
		return flatMap { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Result.failure($0)) },
			ifCancel: { Effect.init(Result.cancel) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Effect<Result<A,T.ElementType.ErrorType>>) -> Effect<Result<A,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType {
	return object.flatMapT(transform)
}

extension OptionalType where ElementType: ResultType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Optional<Result<A,ElementType.ErrorType>>) -> Optional<Result<A,ElementType.ErrorType>> {
		return flatMap { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Result.failure($0)) },
			ifCancel: { Optional.init(Result.cancel) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Optional<Result<A,T.ElementType.ErrorType>>) -> Optional<Result<A,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType {
	return object.flatMapT(transform)
}

extension ReaderType where ElementType: ResultType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Reader<Result<A,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<A,ElementType.ErrorType>,EnvironmentType> {
		return flatMap { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Result.failure($0)) },
			ifCancel: { Reader.init(Result.cancel) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Reader<Result<A,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<A,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType {
	return object.flatMapT(transform)
}

extension ResultType where ElementType: ResultType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Result<Result<A,ElementType.ErrorType>,ErrorType>) -> Result<Result<A,ElementType.ErrorType>,ErrorType> {
		return flatMap { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Result.failure($0)) },
			ifCancel: { Result.init(Result.cancel) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Result<Result<A,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<A,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType {
	return object.flatMapT(transform)
}

extension WriterType where ElementType: ResultType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Writer<Result<A,ElementType.ErrorType>,LogType>) -> Writer<Result<A,ElementType.ErrorType>,LogType> {
		return flatMap { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Result.failure($0)) },
			ifCancel: { Writer.init(Result.cancel) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Writer<Result<A,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<A,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType {
	return object.flatMapT(transform)
}

// MARK: - Level 2 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Effect<Result<A,ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<A,ElementType.ElementType.ErrorType>>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Effect.init(Result.failure($0))) },
			ifCancel: { Array.init(Effect.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Effect<Result<A,T.ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<A,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Optional<Result<A,ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<A,ElementType.ElementType.ErrorType>>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Optional.init(Result.failure($0))) },
			ifCancel: { Array.init(Optional.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Optional<Result<A,T.ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<A,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Array<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Result.init(Result.failure($0))) },
			ifCancel: { Array.init(Result.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Array<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Array<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Writer.init(Result.failure($0))) },
			ifCancel: { Array.init(Writer.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Array<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Effect<Result<A,ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<A,ElementType.ElementType.ErrorType>>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Effect.init(Result.failure($0))) },
			ifCancel: { Deferred.init(Effect.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<A,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<A,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Optional<Result<A,ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<A,ElementType.ElementType.ErrorType>>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Optional.init(Result.failure($0))) },
			ifCancel: { Deferred.init(Optional.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<A,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<A,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Deferred<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Result.init(Result.failure($0))) },
			ifCancel: { Deferred.init(Result.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Deferred<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Deferred<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Writer.init(Result.failure($0))) },
			ifCancel: { Deferred.init(Writer.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Deferred<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Effect<Result<A,ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<A,ElementType.ElementType.ErrorType>>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Effect.init(Result.failure($0))) },
			ifCancel: { Effect.init(Effect.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Effect<Result<A,T.ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<A,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Optional<Result<A,ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<A,ElementType.ElementType.ErrorType>>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Optional.init(Result.failure($0))) },
			ifCancel: { Effect.init(Optional.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Optional<Result<A,T.ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<A,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Effect<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Result.init(Result.failure($0))) },
			ifCancel: { Effect.init(Result.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Effect<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Effect<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Writer.init(Result.failure($0))) },
			ifCancel: { Effect.init(Writer.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Effect<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Effect<Result<A,ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<A,ElementType.ElementType.ErrorType>>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Effect.init(Result.failure($0))) },
			ifCancel: { Optional.init(Effect.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Effect<Result<A,T.ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<A,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Optional<Result<A,ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<A,ElementType.ElementType.ErrorType>>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Optional.init(Result.failure($0))) },
			ifCancel: { Optional.init(Optional.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Optional<Result<A,T.ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<A,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Optional<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Result.init(Result.failure($0))) },
			ifCancel: { Optional.init(Result.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Optional<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Optional<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Writer.init(Result.failure($0))) },
			ifCancel: { Optional.init(Writer.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Optional<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Effect<Result<A,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Effect<Result<A,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Effect.init(Result.failure($0))) },
			ifCancel: { Reader.init(Effect.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Effect<Result<A,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Effect<Result<A,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Optional<Result<A,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Optional<Result<A,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Optional.init(Result.failure($0))) },
			ifCancel: { Reader.init(Optional.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Optional<Result<A,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Optional<Result<A,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Result.init(Result.failure($0))) },
			ifCancel: { Reader.init(Result.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Writer.init(Result.failure($0))) },
			ifCancel: { Reader.init(Writer.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Effect<Result<A,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Effect<Result<A,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Effect.init(Result.failure($0))) },
			ifCancel: { Result.init(Effect.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Effect<Result<A,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Effect<Result<A,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Optional<Result<A,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Optional<Result<A,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Optional.init(Result.failure($0))) },
			ifCancel: { Result.init(Optional.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Optional<Result<A,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Optional<Result<A,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Result.init(Result.failure($0))) },
			ifCancel: { Result.init(Result.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Writer.init(Result.failure($0))) },
			ifCancel: { Result.init(Writer.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Effect<Result<A,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Effect<Result<A,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Effect.init(Result.failure($0))) },
			ifCancel: { Writer.init(Effect.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Effect<Result<A,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Effect<Result<A,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Optional<Result<A,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Optional<Result<A,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Optional.init(Result.failure($0))) },
			ifCancel: { Writer.init(Optional.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Optional<Result<A,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Optional<Result<A,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Result.init(Result.failure($0))) },
			ifCancel: { Writer.init(Result.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) -> Writer<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return flatMapT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Writer.init(Result.failure($0))) },
			ifCancel: { Writer.init(Writer.init(Result.cancel)) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Result<A,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType {
	return object.flatMapTT(transform)
}

// MARK: - Level 3 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Array<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Effect.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Array.init(Effect.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Array<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Array<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Effect.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Array.init(Effect.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Array<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Effect.init(Result.init(Result.failure($0)))) },
			ifCancel: { Array.init(Effect.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Effect.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Array.init(Effect.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Array<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Optional.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Array.init(Optional.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Array<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Array<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Array.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Array<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Array.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Array.init(Optional.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) -> Array<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Result.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Array.init(Result.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>>) -> Array<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) -> Array<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Array.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>>) -> Array<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Array<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Array.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Array<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Array<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Array.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Array<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) -> Array<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Writer.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Array.init(Writer.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>>) -> Array<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) -> Array<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Array.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>>) -> Array<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Array<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Array.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Array<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Array<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Array.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Array.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Array<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Deferred<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Effect.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Effect.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Deferred<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Deferred<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Effect.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Effect.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Deferred<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Effect.init(Result.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Effect.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Effect.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Effect.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Deferred<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Optional.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Optional.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Deferred<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Deferred<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Deferred<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Optional.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) -> Deferred<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Result.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Result.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>>) -> Deferred<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) -> Deferred<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>>) -> Deferred<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Deferred<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Deferred<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Deferred<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Deferred<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) -> Deferred<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Writer.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Writer.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>>) -> Deferred<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) -> Deferred<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>>) -> Deferred<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Deferred<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Deferred<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Deferred<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Deferred.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Deferred.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Deferred<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Effect<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Effect.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Effect.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Effect<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Effect<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Effect.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Effect.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Effect<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Effect.init(Result.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Effect.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Effect.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Effect.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Effect<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Optional.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Optional.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Effect<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Effect<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Effect<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Optional.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) -> Effect<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Result.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Result.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>>) -> Effect<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) -> Effect<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>>) -> Effect<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Effect<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Effect<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Effect<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Effect<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) -> Effect<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Writer.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Writer.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>>) -> Effect<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) -> Effect<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>>) -> Effect<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Effect<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Effect<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Effect<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Effect.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Effect.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Effect<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Optional<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Effect.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Effect.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Optional<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Optional<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Effect.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Effect.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Optional<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Effect.init(Result.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Effect.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Effect.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Effect.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Optional<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Optional.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Optional.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Optional<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) -> Optional<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>>) -> Optional<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Optional.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) -> Optional<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Result.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Result.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>>) -> Optional<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) -> Optional<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>>) -> Optional<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Optional<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Optional<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Optional<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Optional<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) -> Optional<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Writer.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Writer.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>>) -> Optional<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) -> Optional<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>>) -> Optional<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Optional<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Optional<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Optional<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Optional.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Optional<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,EnvironmentType>) -> Reader<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Effect.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Effect.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.EnvironmentType>) -> Reader<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,EnvironmentType>) -> Reader<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Effect.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Effect.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.EnvironmentType>) -> Reader<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Effect.init(Result.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Effect.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Effect.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Effect.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,EnvironmentType>) -> Reader<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Optional.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Optional.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.EnvironmentType>) -> Reader<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,EnvironmentType>) -> Reader<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.EnvironmentType>) -> Reader<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Optional.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Result.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Result.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Writer.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Writer.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Reader.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Reader.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType>) -> Result<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Effect.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Result.init(Effect.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.ErrorType>) -> Result<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType>) -> Result<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Effect.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Result.init(Effect.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.ErrorType>) -> Result<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Effect.init(Result.init(Result.failure($0)))) },
			ifCancel: { Result.init(Effect.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Effect.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Result.init(Effect.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType>) -> Result<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Optional.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Result.init(Optional.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.ErrorType>) -> Result<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType>) -> Result<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Result.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.ErrorType>) -> Result<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Result.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Result.init(Optional.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Result.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Result.init(Result.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Result.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Result.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Result.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Writer.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Result.init(Writer.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Result.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Result.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Result.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Result.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType>) -> Writer<Effect<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Effect.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Effect.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.LogType>) -> Writer<Effect<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType>) -> Writer<Effect<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Effect.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Effect.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.LogType>) -> Writer<Effect<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Effect<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Effect.init(Result.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Effect.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Effect<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Effect<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Effect.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Effect.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Effect<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType>) -> Writer<Optional<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Optional.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Optional.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.LogType>) -> Writer<Optional<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType>) -> Writer<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.LogType>) -> Writer<Optional<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Optional<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Optional.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Optional<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Result.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Result.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,LogType>) -> Writer<Writer<Effect<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Writer.init(Effect.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Writer.init(Effect.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Effect<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,LogType>) -> Writer<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Optional<Result<A,T.ElementType.ElementType.ElementType.ErrorType>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) -> Writer<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Result<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) -> Writer<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.run(
			ifSuccess: { transform($0) },
			ifFailure: { Writer.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Writer<Result<A,T.ElementType.ElementType.ElementType.ErrorType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ResultType {
	return object.flatMapTTT(transform)
}
