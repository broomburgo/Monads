// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `flatMap` definitions; requires `concrete`

import Operadics

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

