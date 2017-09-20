// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `apply` definitions; requires `map`, `joined`, `concrete`

import Abstract

// MARK: - ArrayType

extension ArrayType {
	public func apply <A,T> (_ other: A) -> Array<T> where A: ArrayType, A.ElementType == (ElementType) -> T {
		return Array.zip(self,other).map { $1($0) }
	}
}

public func <*> <A,B,T> (left: A, right: B) -> Array<T> where A: ArrayType, B: ArrayType, A.ElementType == (B.ElementType) -> T {
	return Array.zip(right,left).map { $1($0) }
}

// MARK: - DeferredType

extension DeferredType {
	public func apply <A,T> (_ other: A) -> Deferred<T> where A: DeferredType, A.ElementType == (ElementType) -> T {
		return Deferred.zip(self,other).map { $1($0) }
	}
}

public func <*> <A,B,T> (left: A, right: B) -> Deferred<T> where A: DeferredType, B: DeferredType, A.ElementType == (B.ElementType) -> T {
	return Deferred.zip(right,left).map { $1($0) }
}

// MARK: - EffectType

extension EffectType {
	public func apply <A,T> (_ other: A) -> Effect<T> where A: EffectType, A.ElementType == (ElementType) -> T {
		return Effect.zip(self,other).map { $1($0) }
	}
}

public func <*> <A,B,T> (left: A, right: B) -> Effect<T> where A: EffectType, B: EffectType, A.ElementType == (B.ElementType) -> T {
	return Effect.zip(right,left).map { $1($0) }
}

// MARK: - OptionalType

extension OptionalType {
	public func apply <A,T> (_ other: A) -> Optional<T> where A: OptionalType, A.ElementType == (ElementType) -> T {
		return Optional.zip(self,other).map { $1($0) }
	}
}

public func <*> <A,B,T> (left: A, right: B) -> Optional<T> where A: OptionalType, B: OptionalType, A.ElementType == (B.ElementType) -> T {
	return Optional.zip(right,left).map { $1($0) }
}

// MARK: - ReaderType

extension ReaderType {
	public func apply <A,T> (_ other: A) -> Reader<T, EnvironmentType> where A: ReaderType, A.ElementType == (ElementType) -> T, A.EnvironmentType == EnvironmentType {
		return Reader.zip(self,other).map { $1($0) }
	}
}

public func <*> <A,B,T,Z> (left: A, right: B) -> Reader<T,Z> where A: ReaderType, B: ReaderType, A.ElementType == (B.ElementType) -> T, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.zip(right,left).map { $1($0) }
}

// MARK: - ResultType

extension ResultType {
	public func apply <A,T> (_ other: A) -> Result<T, ErrorType> where A: ResultType, A.ElementType == (ElementType) -> T, A.ErrorType == ErrorType {
		return Result.zip(self,other).map { $1($0) }
	}
}

public func <*> <A,B,T,Z> (left: A, right: B) -> Result<T,Z> where A: ResultType, B: ResultType, A.ElementType == (B.ElementType) -> T, A.ErrorType == Z, B.ErrorType == Z {
	return Result.zip(right,left).map { $1($0) }
}

// MARK: - WriterType

extension WriterType {
	public func apply <A,T> (_ other: A) -> Writer<T, LogType> where A: WriterType, A.ElementType == (ElementType) -> T, A.LogType == LogType {
		return Writer.zip(self,other).map { $1($0) }
	}
}

public func <*> <A,B,T,Z> (left: A, right: B) -> Writer<T,Z> where A: WriterType, B: WriterType, A.ElementType == (B.ElementType) -> T, A.LogType == Z, B.LogType == Z {
	return Writer.zip(right,left).map { $1($0) }
}

