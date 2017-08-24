// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `traverse` definitions; requires `concrete`

import Abstract

private func appending<A>(_ x: A) -> ([A]) -> [A] {
	return { xs in xs + [x] }
}

extension Sequence {

// MARK: - ArrayType - traverse
	public func traverse<T>(_ transform: (Iterator.Element) -> T) -> Array<Array<T.ElementType>> where T: ArrayType {
		return reduce(Array<Array<T.ElementType>>.init([])) { (acc,x) in
			transform(x).map(appending) <*> acc
		}
	}


// MARK: - DeferredType - traverse
	public func traverse<T>(_ transform: (Iterator.Element) -> T) -> Deferred<Array<T.ElementType>> where T: DeferredType {
		return reduce(Deferred<Array<T.ElementType>>.init([])) { (acc,x) in
			transform(x).map(appending) <*> acc
		}
	}


// MARK: - EffectType - traverse
	public func traverse<T>(_ transform: (Iterator.Element) -> T) -> Effect<Array<T.ElementType>> where T: EffectType {
		return reduce(Effect<Array<T.ElementType>>.init([])) { (acc,x) in
			transform(x).map(appending) <*> acc
		}
	}


// MARK: - OptionalType - traverse
	public func traverse<T>(_ transform: (Iterator.Element) -> T) -> Optional<Array<T.ElementType>> where T: OptionalType {
		return reduce(Optional<Array<T.ElementType>>.init([])) { (acc,x) in
			transform(x).map(appending) <*> acc
		}
	}


// MARK: - ReaderType - traverse
	public func traverse<T>(_ transform: (Iterator.Element) -> T) -> Reader<Array<T.ElementType>,T.EnvironmentType> where T: ReaderType {
		return reduce(Reader<Array<T.ElementType>,T.EnvironmentType>.init([])) { (acc,x) in
			transform(x).map(appending) <*> acc
		}
	}


// MARK: - ResultType - traverse
	public func traverse<T>(_ transform: (Iterator.Element) -> T) -> Result<Array<T.ElementType>,T.ErrorType> where T: ResultType {
		return reduce(Result<Array<T.ElementType>,T.ErrorType>.init([])) { (acc,x) in
			transform(x).map(appending) <*> acc
		}
	}


// MARK: - WriterType - traverse
	public func traverse<T>(_ transform: (Iterator.Element) -> T) -> Writer<Array<T.ElementType>,T.LogType> where T: WriterType {
		return reduce(Writer<Array<T.ElementType>,T.LogType>.init([])) { (acc,x) in
			transform(x).map(appending) <*> acc
		}
	}

}

// MARK: - ArrayType - flip
extension Sequence where Iterator.Element: ArrayType {
	public var flip: Array<Array<Iterator.Element.ElementType>> {
		return traverse(F.identity)
	}
}

// MARK: - DeferredType - flip
extension Sequence where Iterator.Element: DeferredType {
	public var flip: Deferred<Array<Iterator.Element.ElementType>> {
		return traverse(F.identity)
	}
}

// MARK: - EffectType - flip
extension Sequence where Iterator.Element: EffectType {
	public var flip: Effect<Array<Iterator.Element.ElementType>> {
		return traverse(F.identity)
	}
}

// MARK: - OptionalType - flip
extension Sequence where Iterator.Element: OptionalType {
	public var flip: Optional<Array<Iterator.Element.ElementType>> {
		return traverse(F.identity)
	}
}

// MARK: - ReaderType - flip
extension Sequence where Iterator.Element: ReaderType {
	public var flip: Reader<Array<Iterator.Element.ElementType>,Iterator.Element.EnvironmentType> {
		return traverse(F.identity)
	}
}

// MARK: - ResultType - flip
extension Sequence where Iterator.Element: ResultType {
	public var flip: Result<Array<Iterator.Element.ElementType>,Iterator.Element.ErrorType> {
		return traverse(F.identity)
	}
}

// MARK: - WriterType - flip
extension Sequence where Iterator.Element: WriterType {
	public var flip: Writer<Array<Iterator.Element.ElementType>,Iterator.Element.LogType> {
		return traverse(F.identity)
	}
}

