// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `zip` definitions; requires `concrete`

import Abstract

// MARK: - ArrayType

public func zip <A,B> (_ a: A, _ b: B) -> Array<(A.ElementType,B.ElementType)> where A: ArrayType, B: ArrayType {
    return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
}

public func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Array<(A.ElementType,B.ElementType,C.ElementType)> where A: ArrayType, B: ArrayType, C: ArrayType {
	return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
}

public func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Array<(A.ElementType,B.ElementType,C.ElementType,D.ElementType)> where A: ArrayType, B: ArrayType, C: ArrayType, D: ArrayType {
	return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
}

// MARK: - DeferredType

public func zip <A,B> (_ a: A, _ b: B) -> Deferred<(A.ElementType,B.ElementType)> where A: DeferredType, B: DeferredType {
    return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
}

public func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Deferred<(A.ElementType,B.ElementType,C.ElementType)> where A: DeferredType, B: DeferredType, C: DeferredType {
	return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
}

public func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Deferred<(A.ElementType,B.ElementType,C.ElementType,D.ElementType)> where A: DeferredType, B: DeferredType, C: DeferredType, D: DeferredType {
	return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
}

// MARK: - OptionalType

public func zip <A,B> (_ a: A, _ b: B) -> Optional<(A.ElementType,B.ElementType)> where A: OptionalType, B: OptionalType {
    return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
}

public func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Optional<(A.ElementType,B.ElementType,C.ElementType)> where A: OptionalType, B: OptionalType, C: OptionalType {
	return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
}

public func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Optional<(A.ElementType,B.ElementType,C.ElementType,D.ElementType)> where A: OptionalType, B: OptionalType, C: OptionalType, D: OptionalType {
	return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
}

// MARK: - ResultType

public func zip <A,B,Z> (_ a: A, _ b: B) -> Result<(A.ElementType,B.ElementType),Z> where A: ResultType, B: ResultType, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
    return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
}

public func zip <A,B,C,Z> (_ a: A, _ b: B, _ c: C) -> Result<(A.ElementType,B.ElementType,C.ElementType),Z> where A: ResultType, B: ResultType, C: ResultType, A.ErrorType == Z, B.ErrorType == Z, C.ErrorType == Z, Z: Error {
	return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
}

public func zip <A,B,C,D,Z> (_ a: A, _ b: B, _ c: C, _ d: D) -> Result<(A.ElementType,B.ElementType,C.ElementType,D.ElementType),Z> where A: ResultType, B: ResultType, C: ResultType, D: ResultType, A.ErrorType == Z, B.ErrorType == Z, C.ErrorType == Z, D.ErrorType == Z, Z: Error {
	return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
}

// MARK: - WriterType

public func zip <A,B,Z> (_ a: A, _ b: B) -> Writer<(A.ElementType,B.ElementType),Z> where A: WriterType, B: WriterType, A.LogType == Z, B.LogType == Z, Z: Monoid {
    return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
}

public func zip <A,B,C,Z> (_ a: A, _ b: B, _ c: C) -> Writer<(A.ElementType,B.ElementType,C.ElementType),Z> where A: WriterType, B: WriterType, C: WriterType, A.LogType == Z, B.LogType == Z, C.LogType == Z, Z: Monoid {
	return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
}

public func zip <A,B,C,D,Z> (_ a: A, _ b: B, _ c: C, _ d: D) -> Writer<(A.ElementType,B.ElementType,C.ElementType,D.ElementType),Z> where A: WriterType, B: WriterType, C: WriterType, D: WriterType, A.LogType == Z, B.LogType == Z, C.LogType == Z, D.LogType == Z, Z: Monoid {
	return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
}

