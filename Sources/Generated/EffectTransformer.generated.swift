// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `EffectType`; requires `concrete`




// MARK: - Level 1 Transformer

extension ArrayType where ElementType: EffectType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Array<Effect<A>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Array<Effect<A>>) -> Array<Effect<A>> {
		return flatMap { transform($0.run()) }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Array<Effect<A>>) -> Array<Effect<A>> where T: ArrayType, T.ElementType: EffectType {
	return object.flatMapT(transform)
}

extension DeferredType where ElementType: EffectType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Deferred<Effect<A>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Deferred<Effect<A>>) -> Deferred<Effect<A>> {
		return flatMap { transform($0.run()) }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Deferred<Effect<A>>) -> Deferred<Effect<A>> where T: DeferredType, T.ElementType: EffectType {
	return object.flatMapT(transform)
}

extension EffectType where ElementType: EffectType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Effect<Effect<A>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Effect<Effect<A>>) -> Effect<Effect<A>> {
		return flatMap { transform($0.run()) }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Effect<Effect<A>>) -> Effect<Effect<A>> where T: EffectType, T.ElementType: EffectType {
	return object.flatMapT(transform)
}

extension OptionalType where ElementType: EffectType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Optional<Effect<A>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Optional<Effect<A>>) -> Optional<Effect<A>> {
		return flatMap { transform($0.run()) }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Optional<Effect<A>>) -> Optional<Effect<A>> where T: OptionalType, T.ElementType: EffectType {
	return object.flatMapT(transform)
}

extension ResultType where ElementType: EffectType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Result<Effect<A>,ErrorType> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Result<Effect<A>,ErrorType>) -> Result<Effect<A>,ErrorType> {
		return flatMap { transform($0.run()) }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Result<Effect<A>,T.ErrorType>) -> Result<Effect<A>,T.ErrorType> where T: ResultType, T.ElementType: EffectType {
	return object.flatMapT(transform)
}

extension WriterType where ElementType: EffectType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Writer<Effect<A>,LogType> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Writer<Effect<A>,LogType>) -> Writer<Effect<A>,LogType> {
		return flatMap { transform($0.run()) }
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Writer<Effect<A>,T.LogType>) -> Writer<Effect<A>,T.LogType> where T: WriterType, T.ElementType: EffectType {
	return object.flatMapT(transform)
}

// MARK: - Level 2 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Array<Effect<Effect<A>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Effect<Effect<A>>>) -> Array<Effect<Effect<A>>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Effect<Effect<A>>>) -> Array<Effect<Effect<A>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Array<Optional<Effect<A>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Optional<Effect<A>>>) -> Array<Optional<Effect<A>>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Optional<Effect<A>>>) -> Array<Optional<Effect<A>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Array<Result<Effect<A>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Result<Effect<A>,ElementType.ErrorType>>) -> Array<Result<Effect<A>,ElementType.ErrorType>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Result<Effect<A>,T.ElementType.ErrorType>>) -> Array<Result<Effect<A>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Array<Writer<Effect<A>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Writer<Effect<A>,ElementType.LogType>>) -> Array<Writer<Effect<A>,ElementType.LogType>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Writer<Effect<A>,T.ElementType.LogType>>) -> Array<Writer<Effect<A>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Effect<A>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<A>>>) -> Deferred<Effect<Effect<A>>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<A>>>) -> Deferred<Effect<Effect<A>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Effect<A>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<A>>>) -> Deferred<Optional<Effect<A>>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<A>>>) -> Deferred<Optional<Effect<A>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Effect<A>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Result<Effect<A>,ElementType.ErrorType>>) -> Deferred<Result<Effect<A>,ElementType.ErrorType>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<A>,T.ElementType.ErrorType>>) -> Deferred<Result<Effect<A>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Effect<A>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<A>,ElementType.LogType>>) -> Deferred<Writer<Effect<A>,ElementType.LogType>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<A>,T.ElementType.LogType>>) -> Deferred<Writer<Effect<A>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Effect<A>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Effect<Effect<A>>>) -> Effect<Effect<Effect<A>>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<A>>>) -> Effect<Effect<Effect<A>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Effect<A>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Optional<Effect<A>>>) -> Effect<Optional<Effect<A>>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<A>>>) -> Effect<Optional<Effect<A>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Effect<Result<Effect<A>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Result<Effect<A>,ElementType.ErrorType>>) -> Effect<Result<Effect<A>,ElementType.ErrorType>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Result<Effect<A>,T.ElementType.ErrorType>>) -> Effect<Result<Effect<A>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Effect<A>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Writer<Effect<A>,ElementType.LogType>>) -> Effect<Writer<Effect<A>,ElementType.LogType>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<A>,T.ElementType.LogType>>) -> Effect<Writer<Effect<A>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Effect<A>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Effect<Effect<A>>>) -> Optional<Effect<Effect<A>>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<A>>>) -> Optional<Effect<Effect<A>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Effect<A>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Optional<Effect<A>>>) -> Optional<Optional<Effect<A>>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<A>>>) -> Optional<Optional<Effect<A>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Result<Effect<A>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Result<Effect<A>,ElementType.ErrorType>>) -> Optional<Result<Effect<A>,ElementType.ErrorType>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Result<Effect<A>,T.ElementType.ErrorType>>) -> Optional<Result<Effect<A>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Effect<A>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Writer<Effect<A>,ElementType.LogType>>) -> Optional<Writer<Effect<A>,ElementType.LogType>> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<A>,T.ElementType.LogType>>) -> Optional<Writer<Effect<A>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Effect<Effect<A>>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Effect<Effect<A>>,ErrorType>) -> Result<Effect<Effect<A>>,ErrorType> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Effect<Effect<A>>,T.ErrorType>) -> Result<Effect<Effect<A>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Optional<Effect<A>>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Optional<Effect<A>>,ErrorType>) -> Result<Optional<Effect<A>>,ErrorType> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Optional<Effect<A>>,T.ErrorType>) -> Result<Optional<Effect<A>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Result<Effect<A>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Result<Effect<A>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Effect<A>,ElementType.ErrorType>,ErrorType> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Result<Effect<A>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Effect<A>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Writer<Effect<A>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Writer<Effect<A>,ElementType.LogType>,ErrorType>) -> Result<Writer<Effect<A>,ElementType.LogType>,ErrorType> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Writer<Effect<A>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Effect<A>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Effect<A>>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Effect<Effect<A>>,LogType>) -> Writer<Effect<Effect<A>>,LogType> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<A>>,T.LogType>) -> Writer<Effect<Effect<A>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Effect<A>>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Optional<Effect<A>>,LogType>) -> Writer<Optional<Effect<A>>,LogType> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<A>>,T.LogType>) -> Writer<Optional<Effect<A>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Result<Effect<A>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Result<Effect<A>,ElementType.ErrorType>,LogType>) -> Writer<Result<Effect<A>,ElementType.ErrorType>,LogType> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Result<Effect<A>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Effect<A>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: EffectType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Effect<A>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Writer<Effect<A>,ElementType.LogType>,LogType>) -> Writer<Writer<Effect<A>,ElementType.LogType>,LogType> {
		return flatMapT { transform($0.run()) }
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<A>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Effect<A>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType {
	return object.flatMapTT(transform)
}

// MARK: - Level 3 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Effect<Effect<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Effect<A>>>>) -> Array<Effect<Effect<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Effect<A>>>>) -> Array<Effect<Effect<Effect<A>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Effect<Optional<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Effect<A>>>>) -> Array<Effect<Optional<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Effect<A>>>>) -> Array<Effect<Optional<Effect<A>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Optional<Effect<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Effect<A>>>>) -> Array<Optional<Effect<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Effect<A>>>>) -> Array<Optional<Effect<Effect<A>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Optional<Optional<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Effect<A>>>>) -> Array<Optional<Optional<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Effect<A>>>>) -> Array<Optional<Optional<Effect<A>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Result<Effect<Effect<A>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Effect<A>>,ElementType.ErrorType>>) -> Array<Result<Effect<Effect<A>>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Effect<A>>,T.ElementType.ErrorType>>) -> Array<Result<Effect<Effect<A>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Result<Optional<Effect<A>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Effect<A>>,ElementType.ErrorType>>) -> Array<Result<Optional<Effect<A>>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Effect<A>>,T.ElementType.ErrorType>>) -> Array<Result<Optional<Effect<A>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Array<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Array<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Array<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Array<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Writer<Effect<Effect<A>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Effect<A>>,ElementType.LogType>>) -> Array<Writer<Effect<Effect<A>>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Effect<A>>,T.ElementType.LogType>>) -> Array<Writer<Effect<Effect<A>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Writer<Optional<Effect<A>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Effect<A>>,ElementType.LogType>>) -> Array<Writer<Optional<Effect<A>>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Effect<A>>,T.ElementType.LogType>>) -> Array<Writer<Optional<Effect<A>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Array<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Array<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Array<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Array<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Array<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Effect<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Effect<A>>>>) -> Deferred<Effect<Effect<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Effect<A>>>>) -> Deferred<Effect<Effect<Effect<A>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Optional<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Effect<A>>>>) -> Deferred<Effect<Optional<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Effect<A>>>>) -> Deferred<Effect<Optional<Effect<A>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Effect<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Effect<A>>>>) -> Deferred<Optional<Effect<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Effect<A>>>>) -> Deferred<Optional<Effect<Effect<A>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Optional<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Effect<A>>>>) -> Deferred<Optional<Optional<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Effect<A>>>>) -> Deferred<Optional<Optional<Effect<A>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Effect<Effect<A>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Effect<A>>,ElementType.ErrorType>>) -> Deferred<Result<Effect<Effect<A>>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Effect<A>>,T.ElementType.ErrorType>>) -> Deferred<Result<Effect<Effect<A>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Optional<Effect<A>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Effect<A>>,ElementType.ErrorType>>) -> Deferred<Result<Optional<Effect<A>>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Effect<A>>,T.ElementType.ErrorType>>) -> Deferred<Result<Optional<Effect<A>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Deferred<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Deferred<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Deferred<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Deferred<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Effect<Effect<A>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Effect<A>>,ElementType.LogType>>) -> Deferred<Writer<Effect<Effect<A>>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Effect<A>>,T.ElementType.LogType>>) -> Deferred<Writer<Effect<Effect<A>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Optional<Effect<A>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Effect<A>>,ElementType.LogType>>) -> Deferred<Writer<Optional<Effect<A>>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Effect<A>>,T.ElementType.LogType>>) -> Deferred<Writer<Optional<Effect<A>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Deferred<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Deferred<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Deferred<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Deferred<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Deferred<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Effect<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Effect<A>>>>) -> Effect<Effect<Effect<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Effect<A>>>>) -> Effect<Effect<Effect<Effect<A>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Optional<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Effect<A>>>>) -> Effect<Effect<Optional<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Effect<A>>>>) -> Effect<Effect<Optional<Effect<A>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Effect<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Effect<A>>>>) -> Effect<Optional<Effect<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Effect<A>>>>) -> Effect<Optional<Effect<Effect<A>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Optional<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Effect<A>>>>) -> Effect<Optional<Optional<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Effect<A>>>>) -> Effect<Optional<Optional<Effect<A>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Result<Effect<Effect<A>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Effect<A>>,ElementType.ErrorType>>) -> Effect<Result<Effect<Effect<A>>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Effect<A>>,T.ElementType.ErrorType>>) -> Effect<Result<Effect<Effect<A>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Result<Optional<Effect<A>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Effect<A>>,ElementType.ErrorType>>) -> Effect<Result<Optional<Effect<A>>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Effect<A>>,T.ElementType.ErrorType>>) -> Effect<Result<Optional<Effect<A>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Effect<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Effect<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Effect<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Effect<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Effect<Effect<A>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Effect<A>>,ElementType.LogType>>) -> Effect<Writer<Effect<Effect<A>>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Effect<A>>,T.ElementType.LogType>>) -> Effect<Writer<Effect<Effect<A>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Optional<Effect<A>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Effect<A>>,ElementType.LogType>>) -> Effect<Writer<Optional<Effect<A>>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Effect<A>>,T.ElementType.LogType>>) -> Effect<Writer<Optional<Effect<A>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Effect<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Effect<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Effect<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Effect<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Effect<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Effect<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Effect<A>>>>) -> Optional<Effect<Effect<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Effect<A>>>>) -> Optional<Effect<Effect<Effect<A>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Optional<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Effect<A>>>>) -> Optional<Effect<Optional<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Effect<A>>>>) -> Optional<Effect<Optional<Effect<A>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Effect<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Effect<A>>>>) -> Optional<Optional<Effect<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Effect<A>>>>) -> Optional<Optional<Effect<Effect<A>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Optional<Effect<A>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Effect<A>>>>) -> Optional<Optional<Optional<Effect<A>>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Effect<A>>>>) -> Optional<Optional<Optional<Effect<A>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Effect<Effect<A>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Effect<A>>,ElementType.ErrorType>>) -> Optional<Result<Effect<Effect<A>>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Effect<A>>,T.ElementType.ErrorType>>) -> Optional<Result<Effect<Effect<A>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Optional<Effect<A>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Effect<A>>,ElementType.ErrorType>>) -> Optional<Result<Optional<Effect<A>>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Effect<A>>,T.ElementType.ErrorType>>) -> Optional<Result<Optional<Effect<A>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Optional<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Optional<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Optional<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Optional<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Effect<Effect<A>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Effect<A>>,ElementType.LogType>>) -> Optional<Writer<Effect<Effect<A>>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Effect<A>>,T.ElementType.LogType>>) -> Optional<Writer<Effect<Effect<A>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Optional<Effect<A>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Effect<A>>,ElementType.LogType>>) -> Optional<Writer<Optional<Effect<A>>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Effect<A>>,T.ElementType.LogType>>) -> Optional<Writer<Optional<Effect<A>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Optional<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Optional<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Optional<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Optional<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Effect<Effect<Effect<A>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Effect<A>>>,ErrorType>) -> Result<Effect<Effect<Effect<A>>>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Effect<A>>>,T.ErrorType>) -> Result<Effect<Effect<Effect<A>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Effect<Optional<Effect<A>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Effect<A>>>,ErrorType>) -> Result<Effect<Optional<Effect<A>>>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Effect<A>>>,T.ErrorType>) -> Result<Effect<Optional<Effect<A>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Effect<Effect<A>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Effect<A>>>,ErrorType>) -> Result<Optional<Effect<Effect<A>>>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Effect<A>>>,T.ErrorType>) -> Result<Optional<Effect<Effect<A>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Optional<Effect<A>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Effect<A>>>,ErrorType>) -> Result<Optional<Optional<Effect<A>>>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Effect<A>>>,T.ErrorType>) -> Result<Optional<Optional<Effect<A>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Effect<Effect<A>>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Effect<A>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Effect<Effect<A>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Effect<A>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Effect<Effect<A>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Optional<Effect<A>>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Effect<A>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Optional<Effect<A>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Effect<A>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Optional<Effect<A>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Effect<Effect<A>>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Effect<A>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Effect<Effect<A>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Effect<A>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Effect<Effect<A>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Optional<Effect<A>>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Effect<A>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Optional<Effect<A>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Effect<A>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Optional<Effect<A>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Effect<Effect<A>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Effect<A>>>,LogType>) -> Writer<Effect<Effect<Effect<A>>>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Effect<A>>>,T.LogType>) -> Writer<Effect<Effect<Effect<A>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Optional<Effect<A>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Effect<A>>>,LogType>) -> Writer<Effect<Optional<Effect<A>>>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Effect<A>>>,T.LogType>) -> Writer<Effect<Optional<Effect<A>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Effect<Result<Effect<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Effect<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Effect<Writer<Effect<A>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Effect<Writer<Effect<A>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Effect<Effect<A>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Effect<A>>>,LogType>) -> Writer<Optional<Effect<Effect<A>>>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Effect<A>>>,T.LogType>) -> Writer<Optional<Effect<Effect<A>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Optional<Effect<A>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Effect<A>>>,LogType>) -> Writer<Optional<Optional<Effect<A>>>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Effect<A>>>,T.LogType>) -> Writer<Optional<Optional<Effect<A>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Optional<Result<Effect<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Optional<Result<Effect<A>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Optional<Writer<Effect<A>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Optional<Writer<Effect<A>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Effect<Effect<A>>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Effect<A>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Effect<Effect<A>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Effect<A>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Effect<Effect<A>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Optional<Effect<A>>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Effect<A>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Optional<Effect<A>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Effect<A>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Optional<Effect<A>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Effect<Effect<A>>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Effect<A>>,ElementType.LogType>,LogType>) -> Writer<Writer<Effect<Effect<A>>,ElementType.LogType>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Effect<A>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Effect<Effect<A>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Optional<Effect<A>>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Effect<A>>,ElementType.LogType>,LogType>) -> Writer<Writer<Optional<Effect<A>>,ElementType.LogType>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Effect<A>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Optional<Effect<A>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) -> Writer<Writer<Result<Effect<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Result<Effect<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: EffectType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) -> Writer<Writer<Writer<Effect<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return flatMapTT { transform($0.run()) }
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Writer<Effect<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: EffectType {
	return object.flatMapTTT(transform)
}
