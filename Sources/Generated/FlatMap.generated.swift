// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `flatMap` definitions; requires `concrete`

import Abstract

// MARK: - ArrayType

extension ArrayType {
    public func flatMap <A> (_ transform: @escaping (ElementType) throws -> A) rethrows -> Array<A.ElementType> where A: ArrayType {
        return try map(transform).joined
    }
}

public func >>- <A,B> (left: A, right: @escaping (A.ElementType) throws -> B) rethrows -> Array<B.ElementType> where A: ArrayType, B: ArrayType {
    return try left.flatMap(right)
}

// MARK: - OptionalType

extension OptionalType {
    public func flatMap <A> (_ transform: @escaping (ElementType) throws -> A) rethrows -> Optional<A.ElementType> where A: OptionalType {
        return try map(transform).joined
    }
}

public func >>- <A,B> (left: A, right: @escaping (A.ElementType) throws -> B) rethrows -> Optional<B.ElementType> where A: OptionalType, B: OptionalType {
    return try left.flatMap(right)
}

// MARK: - ResultType

extension ResultType {
    public func flatMap <A> (_ transform: @escaping (ElementType) throws -> A) rethrows -> Result<A.ElementType, ErrorType> where A: ResultType, A.ErrorType == ErrorType {
        return try map(transform).joined
    }
}

public func >>- <A,B,Z> (left: A, right: @escaping (A.ElementType) throws -> B) rethrows -> Result<B.ElementType, Z> where A: ResultType, B: ResultType, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
    return try left.flatMap(right)
}

// MARK: - WriterType

extension WriterType {
    public func flatMap <A> (_ transform: @escaping (ElementType) throws -> A) rethrows -> Writer<A.ElementType, LogType> where A: WriterType, A.LogType == LogType {
        return try map(transform).joined
    }
}

public func >>- <A,B,Z> (left: A, right: @escaping (A.ElementType) throws -> B) rethrows -> Writer<B.ElementType, Z> where A: WriterType, B: WriterType, A.LogType == Z, B.LogType == Z, Z: Monoid {
    return try left.flatMap(right)
}

