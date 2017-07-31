// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `map` definitions; requires `concrete`

import Abstract

// MARK: - ArrayType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Array<B> where A: ArrayType {
    return right.map(left)
}

// MARK: - DeferredType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Deferred<B> where A: DeferredType {
    return right.map(left)
}

// MARK: - EffectType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Effect<B> where A: EffectType {
    return right.map(left)
}

// MARK: - OptionalType

public func <^> <A,B> (left: @escaping (A.ElementType) -> B, right: A) -> Optional<B> where A: OptionalType {
    return right.map(left)
}

// MARK: - ResultType

public func <^> <A,B,Z> (left: @escaping (A.ElementType) -> B, right: A) -> Result<B, Z> where A: ResultType, A.ErrorType == Z, Z: Error {
    return right.map(left)
}

// MARK: - WriterType

public func <^> <A,B,Z> (left: @escaping (A.ElementType) -> B, right: A) -> Writer<B, Z> where A: WriterType, A.LogType == Z, Z: Monoid {
    return right.map(left)
}

