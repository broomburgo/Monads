// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `<*>` definitions; requires `concrete`

import Abstract

// MARK: - ArrayType

public func <*> <A,B,T> (left: A, right: B) -> Array<T> where A: ArrayType, B: ArrayType, A.ElementType == (B.ElementType) -> T {
  	return zip(left,right).map { $0($1) }
}

// MARK: - OptionalType

public func <*> <A,B,T> (left: A, right: B) -> Optional<T> where A: OptionalType, B: OptionalType, A.ElementType == (B.ElementType) -> T {
  	return zip(left,right).map { $0($1) }
}

// MARK: - ResultType

public func <*> <A,B,T,Z> (left: A, right: B) -> Result<T,Z> where A: ResultType, B: ResultType, A.ElementType == (B.ElementType) -> T, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
  	return zip(left,right).map { $0($1) }
}

// MARK: - WriterType

public func <*> <A,B,T,Z> (left: A, right: B) -> Writer<T,Z> where A: WriterType, B: WriterType, A.ElementType == (B.ElementType) -> T, A.LogType == Z, B.LogType == Z, Z: Monoid {
  	return zip(left,right).map { $0($1) }
}

