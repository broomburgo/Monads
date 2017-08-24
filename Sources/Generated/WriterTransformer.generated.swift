// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `WriterType`; requires `concrete`

import Abstract




// MARK: - Level 1 Transformer

extension ArrayType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Array<Writer<A,ElementType.LogType>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Array<Writer<A,ElementType.LogType>>) -> Array<Writer<A,ElementType.LogType>> {
		return flatMap { (writer) -> Array<Writer<A,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Array<Writer<A,T.ElementType.LogType>>) -> Array<Writer<A,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

extension DeferredType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Deferred<Writer<A,ElementType.LogType>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Deferred<Writer<A,ElementType.LogType>>) -> Deferred<Writer<A,ElementType.LogType>> {
		return flatMap { (writer) -> Deferred<Writer<A,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Deferred<Writer<A,T.ElementType.LogType>>) -> Deferred<Writer<A,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

extension EffectType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Effect<Writer<A,ElementType.LogType>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Effect<Writer<A,ElementType.LogType>>) -> Effect<Writer<A,ElementType.LogType>> {
		return flatMap { (writer) -> Effect<Writer<A,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Effect<Writer<A,T.ElementType.LogType>>) -> Effect<Writer<A,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

extension OptionalType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Optional<Writer<A,ElementType.LogType>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Optional<Writer<A,ElementType.LogType>>) -> Optional<Writer<A,ElementType.LogType>> {
		return flatMap { (writer) -> Optional<Writer<A,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Optional<Writer<A,T.ElementType.LogType>>) -> Optional<Writer<A,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

extension ReaderType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Reader<Writer<A,ElementType.LogType>,EnvironmentType> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Reader<Writer<A,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<A,ElementType.LogType>,EnvironmentType> {
		return flatMap { (writer) -> Reader<Writer<A,ElementType.LogType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Reader<Writer<A,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<A,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

extension ResultType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Result<Writer<A,ElementType.LogType>,ErrorType> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Result<Writer<A,ElementType.LogType>,ErrorType>) -> Result<Writer<A,ElementType.LogType>,ErrorType> {
		return flatMap { (writer) -> Result<Writer<A,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Result<Writer<A,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<A,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

extension WriterType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Writer<Writer<A,ElementType.LogType>,LogType> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Writer<Writer<A,ElementType.LogType>,LogType>) -> Writer<Writer<A,ElementType.LogType>,LogType> {
		return flatMap { (writer) -> Writer<Writer<A,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Writer<Writer<A,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<A,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

// MARK: - Level 2 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Array<Effect<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Effect<Writer<A,ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Array<Effect<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Effect<Writer<A,T.ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<A,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Array<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Optional<Writer<A,ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Array<Optional<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Optional<Writer<A,T.ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<A,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Array<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Array<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapT { (writer) -> Array<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Array<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Array<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Array<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapT { (writer) -> Array<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Array<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<A,ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Deferred<Effect<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<A,T.ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<A,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<A,ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Deferred<Optional<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<A,T.ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<A,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Deferred<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapT { (writer) -> Deferred<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Deferred<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Deferred<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapT { (writer) -> Deferred<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Deferred<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Effect<Writer<A,ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Effect<Effect<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<A,T.ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<A,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Optional<Writer<A,ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Effect<Optional<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<A,T.ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<A,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Effect<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Effect<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapT { (writer) -> Effect<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Effect<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Effect<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapT { (writer) -> Effect<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Effect<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Effect<Writer<A,ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Optional<Effect<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<A,T.ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<A,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<A,T.ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<A,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapT { (writer) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Optional<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapT { (writer) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Optional<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Reader<Effect<Writer<A,ElementType.ElementType.LogType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Effect<Writer<A,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Effect<Writer<A,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapT { (writer) -> Reader<Effect<Writer<A,ElementType.ElementType.LogType>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<A,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Effect<Writer<A,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Reader<Optional<Writer<A,ElementType.ElementType.LogType>>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Optional<Writer<A,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Optional<Writer<A,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapT { (writer) -> Reader<Optional<Writer<A,ElementType.ElementType.LogType>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Reader<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapT { (writer) -> Reader<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Reader<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> {
		return flatMapT { (writer) -> Reader<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Effect<Writer<A,ElementType.ElementType.LogType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Effect<Writer<A,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Effect<Writer<A,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapT { (writer) -> Result<Effect<Writer<A,ElementType.ElementType.LogType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Effect<Writer<A,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Effect<Writer<A,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapT { (writer) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return flatMapT { (writer) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return flatMapT { (writer) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Writer<A,ElementType.ElementType.LogType>>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Effect<Writer<A,ElementType.ElementType.LogType>>,LogType>) -> Writer<Effect<Writer<A,ElementType.ElementType.LogType>>,LogType> {
		return flatMapT { (writer) -> Writer<Effect<Writer<A,ElementType.ElementType.LogType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<A,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Effect<Writer<A,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType>) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> {
		return flatMapT { (writer) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return flatMapT { (writer) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return flatMapT { (writer) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

// MARK: - Level 3 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Array<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Array<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Array<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Array<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Array<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Array<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Array<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Array<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Array<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Array<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Array<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Array<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Array<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Array<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Array<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Array<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Array<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Array<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Array<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Array<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Array<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Array<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Array<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Array<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Array<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Array<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Array<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Array<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Array<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Array<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Array<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Array<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Array<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Array<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Array<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Array<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Array<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Array<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Array<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Array<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Deferred<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Deferred<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Deferred<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Deferred<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Deferred<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Deferred<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Deferred<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Deferred<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Deferred<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Deferred<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Deferred<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Deferred<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Deferred<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Deferred<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Deferred<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Deferred<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Deferred<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Deferred<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Deferred<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Deferred<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Deferred<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Deferred<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Deferred<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Deferred<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Deferred<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Deferred<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Deferred<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Deferred<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Deferred<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Deferred<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Deferred<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Deferred<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Deferred<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Deferred<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Deferred<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Deferred<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Deferred<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Deferred<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Deferred<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Deferred<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Effect<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Effect<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Effect<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Effect<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Effect<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Effect<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Effect<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Effect<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Effect<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Effect<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Effect<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Effect<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Effect<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Effect<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Effect<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Effect<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Effect<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Effect<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Effect<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Effect<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Effect<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Effect<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Effect<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Effect<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Effect<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Effect<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Effect<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Effect<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Effect<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Effect<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Effect<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Effect<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Effect<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Effect<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Effect<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Effect<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Effect<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Effect<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Effect<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Effect<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Optional<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Optional<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Optional<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Optional<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Optional<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Optional<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Optional<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Optional<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Optional<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Optional<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Optional<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Optional<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Optional<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Optional<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Optional<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Optional<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Optional<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType>) -> Reader<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.EnvironmentType>) -> Reader<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType>) -> Reader<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.EnvironmentType>) -> Reader<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType>) -> Reader<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.EnvironmentType>) -> Reader<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType>) -> Reader<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.EnvironmentType>) -> Reader<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Reader<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { (writer) -> Reader<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType>) -> Result<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType>) -> Result<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType>) -> Result<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType>) -> Result<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType>) -> Result<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType>) -> Result<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType>) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType>) -> Result<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType>) -> Writer<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return flatMapTT { (writer) -> Writer<Effect<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType>) -> Writer<Effect<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType>) -> Writer<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return flatMapTT { (writer) -> Writer<Effect<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType>) -> Writer<Effect<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { (writer) -> Writer<Effect<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Effect<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { (writer) -> Writer<Effect<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Effect<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType>) -> Writer<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return flatMapTT { (writer) -> Writer<Optional<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType>) -> Writer<Optional<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType>) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return flatMapTT { (writer) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType>) -> Writer<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { (writer) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { (writer) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { (writer) -> Writer<Result<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { (writer) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { (writer) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { (writer) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType>) -> Writer<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> {
		return flatMapTT { (writer) -> Writer<Writer<Effect<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Effect<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType>) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> {
		return flatMapTT { (writer) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return flatMapTT { (writer) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return flatMapTT { (writer) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}
