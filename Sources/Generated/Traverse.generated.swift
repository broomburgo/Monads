// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: traverse definitions; requires `map`, `joined`, `reducible`, `concrete`

import Abstract
import Functional


// MARK: - ArrayType - traverse
extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType {

	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Array<Array<T.ElementType>> where T: ArrayType {
		return reduce(Array<Array<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Deferred<Array<T.ElementType>> where T: DeferredType {
		return reduce(Deferred<Array<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Effect<Array<T.ElementType>> where T: EffectType {
		return reduce(Effect<Array<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Optional<Array<T.ElementType>> where T: OptionalType {
		return reduce(Optional<Array<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Reader<Array<T.ElementType>,T.EnvironmentType> where T: ReaderType {
		return reduce(Reader<Array<T.ElementType>,T.EnvironmentType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Result<Array<T.ElementType>,T.ErrorType> where T: ResultType {
		return reduce(Result<Array<T.ElementType>,T.ErrorType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Writer<Array<T.ElementType>,T.LogType> where T: WriterType {
		return reduce(Writer<Array<T.ElementType>,T.LogType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}

}

// MARK: - ArrayType - flip
extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ArrayType {
	public var flip: Array<Array<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: DeferredType {
	public var flip: Deferred<Array<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: EffectType {
	public var flip: Effect<Array<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: OptionalType {
	public var flip: Optional<Array<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ReaderType {
	public var flip: Reader<Array<ElementType.ElementType>,ElementType.EnvironmentType> {
		return traverse(F.identity)
	}
}

extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ResultType {
	public var flip: Result<Array<ElementType.ElementType>,ElementType.ErrorType> {
		return traverse(F.identity)
	}
}

extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: WriterType {
	public var flip: Writer<Array<ElementType.ElementType>,ElementType.LogType> {
		return traverse(F.identity)
	}
}


// MARK: - EffectType - traverse
extension EffectType where Self: Reducible, Self.ReducibleElementType == ElementType, Self.ElementType: Monoid {

	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Array<Effect<T.ElementType>> where T: ArrayType, T.ElementType: Monoid {
		return reduce(Array<Effect<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Effect<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Deferred<Effect<T.ElementType>> where T: DeferredType, T.ElementType: Monoid {
		return reduce(Deferred<Effect<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Effect<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Effect<Effect<T.ElementType>> where T: EffectType, T.ElementType: Monoid {
		return reduce(Effect<Effect<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Effect<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Optional<Effect<T.ElementType>> where T: OptionalType, T.ElementType: Monoid {
		return reduce(Optional<Effect<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Effect<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Reader<Effect<T.ElementType>,T.EnvironmentType> where T: ReaderType, T.ElementType: Monoid {
		return reduce(Reader<Effect<T.ElementType>,T.EnvironmentType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Effect<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Result<Effect<T.ElementType>,T.ErrorType> where T: ResultType, T.ElementType: Monoid {
		return reduce(Result<Effect<T.ElementType>,T.ErrorType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Effect<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Writer<Effect<T.ElementType>,T.LogType> where T: WriterType, T.ElementType: Monoid {
		return reduce(Writer<Effect<T.ElementType>,T.LogType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Effect<T.ElementType>.appending) <*> acc
		}
	}

}

// MARK: - EffectType - flip
extension EffectType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ArrayType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Array<Effect<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension EffectType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: DeferredType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Deferred<Effect<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension EffectType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: EffectType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Effect<Effect<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension EffectType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: OptionalType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Optional<Effect<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension EffectType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ReaderType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Reader<Effect<ElementType.ElementType>,ElementType.EnvironmentType> {
		return traverse(F.identity)
	}
}

extension EffectType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ResultType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Result<Effect<ElementType.ElementType>,ElementType.ErrorType> {
		return traverse(F.identity)
	}
}

extension EffectType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: WriterType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Writer<Effect<ElementType.ElementType>,ElementType.LogType> {
		return traverse(F.identity)
	}
}


// MARK: - OptionalType - traverse
extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType {

	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Array<Optional<T.ElementType>> where T: ArrayType {
		return reduce(Array<Optional<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Deferred<Optional<T.ElementType>> where T: DeferredType {
		return reduce(Deferred<Optional<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Effect<Optional<T.ElementType>> where T: EffectType {
		return reduce(Effect<Optional<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Optional<Optional<T.ElementType>> where T: OptionalType {
		return reduce(Optional<Optional<T.ElementType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Reader<Optional<T.ElementType>,T.EnvironmentType> where T: ReaderType {
		return reduce(Reader<Optional<T.ElementType>,T.EnvironmentType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Result<Optional<T.ElementType>,T.ErrorType> where T: ResultType {
		return reduce(Result<Optional<T.ElementType>,T.ErrorType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Writer<Optional<T.ElementType>,T.LogType> where T: WriterType {
		return reduce(Writer<Optional<T.ElementType>,T.LogType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}

}

// MARK: - OptionalType - flip
extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ArrayType {
	public var flip: Array<Optional<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: DeferredType {
	public var flip: Deferred<Optional<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: EffectType {
	public var flip: Effect<Optional<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: OptionalType {
	public var flip: Optional<Optional<ElementType.ElementType>> {
		return traverse(F.identity)
	}
}

extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ReaderType {
	public var flip: Reader<Optional<ElementType.ElementType>,ElementType.EnvironmentType> {
		return traverse(F.identity)
	}
}

extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ResultType {
	public var flip: Result<Optional<ElementType.ElementType>,ElementType.ErrorType> {
		return traverse(F.identity)
	}
}

extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: WriterType {
	public var flip: Writer<Optional<ElementType.ElementType>,ElementType.LogType> {
		return traverse(F.identity)
	}
}


// MARK: - ResultType - traverse
extension ResultType where Self: Reducible, Self.ReducibleElementType == ElementType {

	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Array<Result<T.ElementType,ErrorType>> where T: ArrayType {
		return reduce(Array<Result<T.ElementType,ErrorType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Deferred<Result<T.ElementType,ErrorType>> where T: DeferredType {
		return reduce(Deferred<Result<T.ElementType,ErrorType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Effect<Result<T.ElementType,ErrorType>> where T: EffectType {
		return reduce(Effect<Result<T.ElementType,ErrorType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Optional<Result<T.ElementType,ErrorType>> where T: OptionalType {
		return reduce(Optional<Result<T.ElementType,ErrorType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Reader<Result<T.ElementType,ErrorType>,T.EnvironmentType> where T: ReaderType {
		return reduce(Reader<Result<T.ElementType,ErrorType>,T.EnvironmentType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Result<Result<T.ElementType,ErrorType>,T.ErrorType> where T: ResultType {
		return reduce(Result<Result<T.ElementType,ErrorType>,T.ErrorType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Writer<Result<T.ElementType,ErrorType>,T.LogType> where T: WriterType {
		return reduce(Writer<Result<T.ElementType,ErrorType>,T.LogType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}

}

// MARK: - ResultType - flip
extension ResultType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ArrayType {
	public var flip: Array<Result<ElementType.ElementType,ErrorType>> {
		return traverse(F.identity)
	}
}

extension ResultType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: DeferredType {
	public var flip: Deferred<Result<ElementType.ElementType,ErrorType>> {
		return traverse(F.identity)
	}
}

extension ResultType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: EffectType {
	public var flip: Effect<Result<ElementType.ElementType,ErrorType>> {
		return traverse(F.identity)
	}
}

extension ResultType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: OptionalType {
	public var flip: Optional<Result<ElementType.ElementType,ErrorType>> {
		return traverse(F.identity)
	}
}

extension ResultType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ReaderType {
	public var flip: Reader<Result<ElementType.ElementType,ErrorType>,ElementType.EnvironmentType> {
		return traverse(F.identity)
	}
}

extension ResultType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ResultType {
	public var flip: Result<Result<ElementType.ElementType,ErrorType>,ElementType.ErrorType> {
		return traverse(F.identity)
	}
}

extension ResultType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: WriterType {
	public var flip: Writer<Result<ElementType.ElementType,ErrorType>,ElementType.LogType> {
		return traverse(F.identity)
	}
}


// MARK: - WriterType - traverse
extension WriterType where Self: Reducible, Self.ReducibleElementType == ElementType, Self.ElementType: Monoid {

	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Array<Writer<T.ElementType,LogType>> where T: ArrayType, T.ElementType: Monoid {
		return reduce(Array<Writer<T.ElementType,LogType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Writer<T.ElementType,LogType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Deferred<Writer<T.ElementType,LogType>> where T: DeferredType, T.ElementType: Monoid {
		return reduce(Deferred<Writer<T.ElementType,LogType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Writer<T.ElementType,LogType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Effect<Writer<T.ElementType,LogType>> where T: EffectType, T.ElementType: Monoid {
		return reduce(Effect<Writer<T.ElementType,LogType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Writer<T.ElementType,LogType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Optional<Writer<T.ElementType,LogType>> where T: OptionalType, T.ElementType: Monoid {
		return reduce(Optional<Writer<T.ElementType,LogType>>.pure(.neutral)) { (acc,x) in
			transform(x).map(Writer<T.ElementType,LogType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Reader<Writer<T.ElementType,LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: Monoid {
		return reduce(Reader<Writer<T.ElementType,LogType>,T.EnvironmentType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Writer<T.ElementType,LogType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Result<Writer<T.ElementType,LogType>,T.ErrorType> where T: ResultType, T.ElementType: Monoid {
		return reduce(Result<Writer<T.ElementType,LogType>,T.ErrorType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Writer<T.ElementType,LogType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: @escaping (ElementType) -> T) -> Writer<Writer<T.ElementType,LogType>,T.LogType> where T: WriterType, T.ElementType: Monoid {
		return reduce(Writer<Writer<T.ElementType,LogType>,T.LogType>.pure(.neutral)) { (acc,x) in
			transform(x).map(Writer<T.ElementType,LogType>.appending) <*> acc
		}
	}

}

// MARK: - WriterType - flip
extension WriterType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ArrayType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Array<Writer<ElementType.ElementType,LogType>> {
		return traverse(F.identity)
	}
}

extension WriterType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: DeferredType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Deferred<Writer<ElementType.ElementType,LogType>> {
		return traverse(F.identity)
	}
}

extension WriterType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: EffectType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Effect<Writer<ElementType.ElementType,LogType>> {
		return traverse(F.identity)
	}
}

extension WriterType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: OptionalType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Optional<Writer<ElementType.ElementType,LogType>> {
		return traverse(F.identity)
	}
}

extension WriterType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ReaderType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Reader<Writer<ElementType.ElementType,LogType>,ElementType.EnvironmentType> {
		return traverse(F.identity)
	}
}

extension WriterType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: ResultType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Result<Writer<ElementType.ElementType,LogType>,ElementType.ErrorType> {
		return traverse(F.identity)
	}
}

extension WriterType where Self: Reducible, Self.ReducibleElementType == ElementType, ElementType: WriterType, Self.ElementType: Monoid, ElementType.ElementType: Monoid {
	public var flip: Writer<Writer<ElementType.ElementType,LogType>,ElementType.LogType> {
		return traverse(F.identity)
	}
}

