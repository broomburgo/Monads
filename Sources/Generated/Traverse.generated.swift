// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: traverse definitions; requires `reducible` and `concrete`

import Abstract


// MARK: - ArrayType - traverse
extension ArrayType where Self: Reducible, Self.ReducibleElementType == ElementType {

	public func traverse<T>(_ transform: (ElementType) -> T) -> Array<Array<T.ElementType>> where T: ArrayType {
		return reduce(Array<Array<T.ElementType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Deferred<Array<T.ElementType>> where T: DeferredType {
		return reduce(Deferred<Array<T.ElementType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Effect<Array<T.ElementType>> where T: EffectType {
		return reduce(Effect<Array<T.ElementType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Optional<Array<T.ElementType>> where T: OptionalType {
		return reduce(Optional<Array<T.ElementType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Reader<Array<T.ElementType>,T.EnvironmentType> where T: ReaderType {
		return reduce(Reader<Array<T.ElementType>,T.EnvironmentType>.init(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Result<Array<T.ElementType>,T.ErrorType> where T: ResultType {
		return reduce(Result<Array<T.ElementType>,T.ErrorType>.init(.neutral)) { (acc,x) in
			transform(x).map(Array<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Writer<Array<T.ElementType>,T.LogType> where T: WriterType {
		return reduce(Writer<Array<T.ElementType>,T.LogType>.init(.neutral)) { (acc,x) in
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


// MARK: - OptionalType - traverse
extension OptionalType where Self: Reducible, Self.ReducibleElementType == ElementType {

	public func traverse<T>(_ transform: (ElementType) -> T) -> Array<Optional<T.ElementType>> where T: ArrayType {
		return reduce(Array<Optional<T.ElementType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Deferred<Optional<T.ElementType>> where T: DeferredType {
		return reduce(Deferred<Optional<T.ElementType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Effect<Optional<T.ElementType>> where T: EffectType {
		return reduce(Effect<Optional<T.ElementType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Optional<Optional<T.ElementType>> where T: OptionalType {
		return reduce(Optional<Optional<T.ElementType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Reader<Optional<T.ElementType>,T.EnvironmentType> where T: ReaderType {
		return reduce(Reader<Optional<T.ElementType>,T.EnvironmentType>.init(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Result<Optional<T.ElementType>,T.ErrorType> where T: ResultType {
		return reduce(Result<Optional<T.ElementType>,T.ErrorType>.init(.neutral)) { (acc,x) in
			transform(x).map(Optional<T.ElementType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Writer<Optional<T.ElementType>,T.LogType> where T: WriterType {
		return reduce(Writer<Optional<T.ElementType>,T.LogType>.init(.neutral)) { (acc,x) in
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

	public func traverse<T>(_ transform: (ElementType) -> T) -> Array<Result<T.ElementType,ErrorType>> where T: ArrayType {
		return reduce(Array<Result<T.ElementType,ErrorType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Deferred<Result<T.ElementType,ErrorType>> where T: DeferredType {
		return reduce(Deferred<Result<T.ElementType,ErrorType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Effect<Result<T.ElementType,ErrorType>> where T: EffectType {
		return reduce(Effect<Result<T.ElementType,ErrorType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Optional<Result<T.ElementType,ErrorType>> where T: OptionalType {
		return reduce(Optional<Result<T.ElementType,ErrorType>>.init(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Reader<Result<T.ElementType,ErrorType>,T.EnvironmentType> where T: ReaderType {
		return reduce(Reader<Result<T.ElementType,ErrorType>,T.EnvironmentType>.init(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Result<Result<T.ElementType,ErrorType>,T.ErrorType> where T: ResultType {
		return reduce(Result<Result<T.ElementType,ErrorType>,T.ErrorType>.init(.neutral)) { (acc,x) in
			transform(x).map(Result<T.ElementType,ErrorType>.appending) <*> acc
		}
	}


	public func traverse<T>(_ transform: (ElementType) -> T) -> Writer<Result<T.ElementType,ErrorType>,T.LogType> where T: WriterType {
		return reduce(Writer<Result<T.ElementType,ErrorType>,T.LogType>.init(.neutral)) { (acc,x) in
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

