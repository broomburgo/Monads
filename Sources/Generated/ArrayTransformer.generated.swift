// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `ArrayType`; requires `map`, `joined`, `concrete`




// MARK: - Level 1 Transformer

extension ArrayType where ElementType: ArrayType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Array<Array<A>>) -> Array<Array<A>> {
		return flatMap { $0.getArray.traverse(transform).map { $0.joined } }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Array<Array<A>>) -> Array<Array<A>> where T: ArrayType, T.ElementType: ArrayType {
	return object.flatMapT(transform)
}

extension DeferredType where ElementType: ArrayType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Deferred<Array<A>>) -> Deferred<Array<A>> {
		return flatMap { $0.getArray.traverse(transform).map { $0.joined } }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Deferred<Array<A>>) -> Deferred<Array<A>> where T: DeferredType, T.ElementType: ArrayType {
	return object.flatMapT(transform)
}

extension EffectType where ElementType: ArrayType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Effect<Array<A>>) -> Effect<Array<A>> {
		return flatMap { $0.getArray.traverse(transform).map { $0.joined } }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Effect<Array<A>>) -> Effect<Array<A>> where T: EffectType, T.ElementType: ArrayType {
	return object.flatMapT(transform)
}

extension OptionalType where ElementType: ArrayType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Optional<Array<A>>) -> Optional<Array<A>> {
		return flatMap { $0.getArray.traverse(transform).map { $0.joined } }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Optional<Array<A>>) -> Optional<Array<A>> where T: OptionalType, T.ElementType: ArrayType {
	return object.flatMapT(transform)
}

extension ReaderType where ElementType: ArrayType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Reader<Array<A>,EnvironmentType>) -> Reader<Array<A>,EnvironmentType> {
		return flatMap { $0.getArray.traverse(transform).map { $0.joined } }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Reader<Array<A>,T.EnvironmentType>) -> Reader<Array<A>,T.EnvironmentType> where T: ReaderType, T.ElementType: ArrayType {
	return object.flatMapT(transform)
}

extension ResultType where ElementType: ArrayType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Result<Array<A>,ErrorType>) -> Result<Array<A>,ErrorType> {
		return flatMap { $0.getArray.traverse(transform).map { $0.joined } }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Result<Array<A>,T.ErrorType>) -> Result<Array<A>,T.ErrorType> where T: ResultType, T.ElementType: ArrayType {
	return object.flatMapT(transform)
}

extension WriterType where ElementType: ArrayType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Writer<Array<A>,LogType>) -> Writer<Array<A>,LogType> {
		return flatMap { $0.getArray.traverse(transform).map { $0.joined } }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Writer<Array<A>,T.LogType>) -> Writer<Array<A>,T.LogType> where T: WriterType, T.ElementType: ArrayType {
	return object.flatMapT(transform)
}

// MARK: - Level 2 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Effect<Array<A>>>) -> Array<Effect<Array<A>>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Effect<Array<A>>>) -> Array<Effect<Array<A>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Optional<Array<A>>>) -> Array<Optional<Array<A>>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Optional<Array<A>>>) -> Array<Optional<Array<A>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Result<Array<A>,ElementType.ErrorType>>) -> Array<Result<Array<A>,ElementType.ErrorType>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Result<Array<A>,T.ElementType.ErrorType>>) -> Array<Result<Array<A>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Writer<Array<A>,ElementType.LogType>>) -> Array<Writer<Array<A>,ElementType.LogType>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Writer<Array<A>,T.ElementType.LogType>>) -> Array<Writer<Array<A>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Effect<Array<A>>>) -> Deferred<Effect<Array<A>>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Effect<Array<A>>>) -> Deferred<Effect<Array<A>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Optional<Array<A>>>) -> Deferred<Optional<Array<A>>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Optional<Array<A>>>) -> Deferred<Optional<Array<A>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Result<Array<A>,ElementType.ErrorType>>) -> Deferred<Result<Array<A>,ElementType.ErrorType>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Result<Array<A>,T.ElementType.ErrorType>>) -> Deferred<Result<Array<A>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Writer<Array<A>,ElementType.LogType>>) -> Deferred<Writer<Array<A>,ElementType.LogType>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Writer<Array<A>,T.ElementType.LogType>>) -> Deferred<Writer<Array<A>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Effect<Array<A>>>) -> Effect<Effect<Array<A>>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Effect<Array<A>>>) -> Effect<Effect<Array<A>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Optional<Array<A>>>) -> Effect<Optional<Array<A>>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Optional<Array<A>>>) -> Effect<Optional<Array<A>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Result<Array<A>,ElementType.ErrorType>>) -> Effect<Result<Array<A>,ElementType.ErrorType>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Result<Array<A>,T.ElementType.ErrorType>>) -> Effect<Result<Array<A>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Writer<Array<A>,ElementType.LogType>>) -> Effect<Writer<Array<A>,ElementType.LogType>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Writer<Array<A>,T.ElementType.LogType>>) -> Effect<Writer<Array<A>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Effect<Array<A>>>) -> Optional<Effect<Array<A>>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Effect<Array<A>>>) -> Optional<Effect<Array<A>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Optional<Array<A>>>) -> Optional<Optional<Array<A>>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Optional<Array<A>>>) -> Optional<Optional<Array<A>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Result<Array<A>,ElementType.ErrorType>>) -> Optional<Result<Array<A>,ElementType.ErrorType>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Result<Array<A>,T.ElementType.ErrorType>>) -> Optional<Result<Array<A>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Writer<Array<A>,ElementType.LogType>>) -> Optional<Writer<Array<A>,ElementType.LogType>> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Writer<Array<A>,T.ElementType.LogType>>) -> Optional<Writer<Array<A>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Effect<Array<A>>,EnvironmentType>) -> Reader<Effect<Array<A>>,EnvironmentType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Effect<Array<A>>,T.EnvironmentType>) -> Reader<Effect<Array<A>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Optional<Array<A>>,EnvironmentType>) -> Reader<Optional<Array<A>>,EnvironmentType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Optional<Array<A>>,T.EnvironmentType>) -> Reader<Optional<Array<A>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Result<Array<A>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Array<A>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Result<Array<A>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Array<A>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Writer<Array<A>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Array<A>,ElementType.LogType>,EnvironmentType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Writer<Array<A>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Array<A>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Effect<Array<A>>,ErrorType>) -> Result<Effect<Array<A>>,ErrorType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Effect<Array<A>>,T.ErrorType>) -> Result<Effect<Array<A>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Optional<Array<A>>,ErrorType>) -> Result<Optional<Array<A>>,ErrorType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Optional<Array<A>>,T.ErrorType>) -> Result<Optional<Array<A>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Result<Array<A>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Array<A>,ElementType.ErrorType>,ErrorType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Result<Array<A>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Array<A>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Writer<Array<A>,ElementType.LogType>,ErrorType>) -> Result<Writer<Array<A>,ElementType.LogType>,ErrorType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Writer<Array<A>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Array<A>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Effect<Array<A>>,LogType>) -> Writer<Effect<Array<A>>,LogType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Effect<Array<A>>,T.LogType>) -> Writer<Effect<Array<A>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Optional<Array<A>>,LogType>) -> Writer<Optional<Array<A>>,LogType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Optional<Array<A>>,T.LogType>) -> Writer<Optional<Array<A>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Result<Array<A>,ElementType.ErrorType>,LogType>) -> Writer<Result<Array<A>,ElementType.ErrorType>,LogType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Result<Array<A>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Array<A>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ArrayType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Writer<Array<A>,ElementType.LogType>,LogType>) -> Writer<Writer<Array<A>,ElementType.LogType>,LogType> {
		return flatMapT { $0.getArray.traverse(transform).map { $0.flip.map { $0.joined } } }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Writer<Array<A>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Array<A>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: ArrayType {
	return object.flatMapTT(transform)
}

// MARK: - Level 3 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Array<A>>>>) -> Array<Effect<Effect<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Array<A>>>>) -> Array<Effect<Effect<Array<A>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Array<A>>>>) -> Array<Effect<Optional<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Array<A>>>>) -> Array<Effect<Optional<Array<A>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Array<A>>>>) -> Array<Optional<Effect<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Array<A>>>>) -> Array<Optional<Effect<Array<A>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Array<A>>>>) -> Array<Optional<Optional<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Array<A>>>>) -> Array<Optional<Optional<Array<A>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Array<A>>,ElementType.ErrorType>>) -> Array<Result<Effect<Array<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Array<A>>,T.ElementType.ErrorType>>) -> Array<Result<Effect<Array<A>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Array<A>>,ElementType.ErrorType>>) -> Array<Result<Optional<Array<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Array<A>>,T.ElementType.ErrorType>>) -> Array<Result<Optional<Array<A>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Array<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Array<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Array<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Array<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Array<A>>,ElementType.LogType>>) -> Array<Writer<Effect<Array<A>>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Array<A>>,T.ElementType.LogType>>) -> Array<Writer<Effect<Array<A>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Array<A>>,ElementType.LogType>>) -> Array<Writer<Optional<Array<A>>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Array<A>>,T.ElementType.LogType>>) -> Array<Writer<Optional<Array<A>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Array<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Array<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Array<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Array<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Array<A>>>>) -> Deferred<Effect<Effect<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Array<A>>>>) -> Deferred<Effect<Effect<Array<A>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Array<A>>>>) -> Deferred<Effect<Optional<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Array<A>>>>) -> Deferred<Effect<Optional<Array<A>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Array<A>>>>) -> Deferred<Optional<Effect<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Array<A>>>>) -> Deferred<Optional<Effect<Array<A>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Array<A>>>>) -> Deferred<Optional<Optional<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Array<A>>>>) -> Deferred<Optional<Optional<Array<A>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Array<A>>,ElementType.ErrorType>>) -> Deferred<Result<Effect<Array<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Array<A>>,T.ElementType.ErrorType>>) -> Deferred<Result<Effect<Array<A>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Array<A>>,ElementType.ErrorType>>) -> Deferred<Result<Optional<Array<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Array<A>>,T.ElementType.ErrorType>>) -> Deferred<Result<Optional<Array<A>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Deferred<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Deferred<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Deferred<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Deferred<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Array<A>>,ElementType.LogType>>) -> Deferred<Writer<Effect<Array<A>>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Array<A>>,T.ElementType.LogType>>) -> Deferred<Writer<Effect<Array<A>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Array<A>>,ElementType.LogType>>) -> Deferred<Writer<Optional<Array<A>>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Array<A>>,T.ElementType.LogType>>) -> Deferred<Writer<Optional<Array<A>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Deferred<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Deferred<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Deferred<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Deferred<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Array<A>>>>) -> Effect<Effect<Effect<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Array<A>>>>) -> Effect<Effect<Effect<Array<A>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Array<A>>>>) -> Effect<Effect<Optional<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Array<A>>>>) -> Effect<Effect<Optional<Array<A>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Array<A>>>>) -> Effect<Optional<Effect<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Array<A>>>>) -> Effect<Optional<Effect<Array<A>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Array<A>>>>) -> Effect<Optional<Optional<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Array<A>>>>) -> Effect<Optional<Optional<Array<A>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Array<A>>,ElementType.ErrorType>>) -> Effect<Result<Effect<Array<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Array<A>>,T.ElementType.ErrorType>>) -> Effect<Result<Effect<Array<A>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Array<A>>,ElementType.ErrorType>>) -> Effect<Result<Optional<Array<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Array<A>>,T.ElementType.ErrorType>>) -> Effect<Result<Optional<Array<A>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Effect<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Effect<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Effect<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Effect<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Array<A>>,ElementType.LogType>>) -> Effect<Writer<Effect<Array<A>>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Array<A>>,T.ElementType.LogType>>) -> Effect<Writer<Effect<Array<A>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Array<A>>,ElementType.LogType>>) -> Effect<Writer<Optional<Array<A>>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Array<A>>,T.ElementType.LogType>>) -> Effect<Writer<Optional<Array<A>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Effect<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Effect<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Effect<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Effect<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Array<A>>>>) -> Optional<Effect<Effect<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Array<A>>>>) -> Optional<Effect<Effect<Array<A>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Array<A>>>>) -> Optional<Effect<Optional<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Array<A>>>>) -> Optional<Effect<Optional<Array<A>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Array<A>>>>) -> Optional<Optional<Effect<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Array<A>>>>) -> Optional<Optional<Effect<Array<A>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Array<A>>>>) -> Optional<Optional<Optional<Array<A>>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Array<A>>>>) -> Optional<Optional<Optional<Array<A>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Array<A>>,ElementType.ErrorType>>) -> Optional<Result<Effect<Array<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Array<A>>,T.ElementType.ErrorType>>) -> Optional<Result<Effect<Array<A>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Array<A>>,ElementType.ErrorType>>) -> Optional<Result<Optional<Array<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Array<A>>,T.ElementType.ErrorType>>) -> Optional<Result<Optional<Array<A>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Optional<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Optional<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Optional<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Optional<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Array<A>>,ElementType.LogType>>) -> Optional<Writer<Effect<Array<A>>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Array<A>>,T.ElementType.LogType>>) -> Optional<Writer<Effect<Array<A>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Array<A>>,ElementType.LogType>>) -> Optional<Writer<Optional<Array<A>>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Array<A>>,T.ElementType.LogType>>) -> Optional<Writer<Optional<Array<A>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Optional<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Optional<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Optional<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Optional<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Effect<Array<A>>>,EnvironmentType>) -> Reader<Effect<Effect<Array<A>>>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Effect<Array<A>>>,T.EnvironmentType>) -> Reader<Effect<Effect<Array<A>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<Array<A>>>,EnvironmentType>) -> Reader<Effect<Optional<Array<A>>>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<Array<A>>>,T.EnvironmentType>) -> Reader<Effect<Optional<Array<A>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Effect<Array<A>>>,EnvironmentType>) -> Reader<Optional<Effect<Array<A>>>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Effect<Array<A>>>,T.EnvironmentType>) -> Reader<Optional<Effect<Array<A>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<Array<A>>>,EnvironmentType>) -> Reader<Optional<Optional<Array<A>>>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<Array<A>>>,T.EnvironmentType>) -> Reader<Optional<Optional<Array<A>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Effect<Array<A>>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Effect<Array<A>>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Effect<Array<A>>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Effect<Array<A>>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Optional<Array<A>>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Optional<Array<A>>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Optional<Array<A>>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Optional<Array<A>>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Effect<Array<A>>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Effect<Array<A>>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Effect<Array<A>>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Effect<Array<A>>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<Array<A>>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Optional<Array<A>>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<Array<A>>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Optional<Array<A>>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Array<A>>>,ErrorType>) -> Result<Effect<Effect<Array<A>>>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Array<A>>>,T.ErrorType>) -> Result<Effect<Effect<Array<A>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Array<A>>>,ErrorType>) -> Result<Effect<Optional<Array<A>>>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Array<A>>>,T.ErrorType>) -> Result<Effect<Optional<Array<A>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Array<A>>>,ErrorType>) -> Result<Optional<Effect<Array<A>>>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Array<A>>>,T.ErrorType>) -> Result<Optional<Effect<Array<A>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Array<A>>>,ErrorType>) -> Result<Optional<Optional<Array<A>>>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Array<A>>>,T.ErrorType>) -> Result<Optional<Optional<Array<A>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Array<A>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Effect<Array<A>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Array<A>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Effect<Array<A>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Array<A>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Optional<Array<A>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Array<A>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Optional<Array<A>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Array<A>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Effect<Array<A>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Array<A>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Effect<Array<A>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Array<A>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Optional<Array<A>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Array<A>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Optional<Array<A>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Array<A>>>,LogType>) -> Writer<Effect<Effect<Array<A>>>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Array<A>>>,T.LogType>) -> Writer<Effect<Effect<Array<A>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Array<A>>>,LogType>) -> Writer<Effect<Optional<Array<A>>>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Array<A>>>,T.LogType>) -> Writer<Effect<Optional<Array<A>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Effect<Result<Array<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Effect<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Effect<Writer<Array<A>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Effect<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Array<A>>>,LogType>) -> Writer<Optional<Effect<Array<A>>>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Array<A>>>,T.LogType>) -> Writer<Optional<Effect<Array<A>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Array<A>>>,LogType>) -> Writer<Optional<Optional<Array<A>>>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Array<A>>>,T.LogType>) -> Writer<Optional<Optional<Array<A>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Optional<Result<Array<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Optional<Result<Array<A>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Optional<Writer<Array<A>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Optional<Writer<Array<A>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Array<A>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Effect<Array<A>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Array<A>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Effect<Array<A>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Array<A>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Optional<Array<A>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Array<A>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Optional<Array<A>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Array<A>>,ElementType.LogType>,LogType>) -> Writer<Writer<Effect<Array<A>>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Array<A>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Effect<Array<A>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Array<A>>,ElementType.LogType>,LogType>) -> Writer<Writer<Optional<Array<A>>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Array<A>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Optional<Array<A>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) -> Writer<Writer<Result<Array<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Result<Array<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ArrayType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) -> Writer<Writer<Writer<Array<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.getArray.traverse(transform).map { $0.flip.map { $0.flip.map { $0.joined } } } }	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Writer<Array<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: ArrayType {
	return object.flatMapTTT(transform)
}
