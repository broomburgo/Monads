// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `flatMap` definitions; requires `map`, `joined`, `concrete`

import Abstract

infix operator |>>- : MonadPrecedenceLeft
infix operator ||>>- : MonadPrecedenceLeft
infix operator |||>>- : MonadPrecedenceLeft

// MARK: - ArrayType

extension ArrayType {
    public func flatMap <A> (_ transform: @escaping (ElementType) -> A) -> Array<A.ElementType> where A: ArrayType {
        return map(transform).joined
    }
}

public func >>- <A,B> (left: A, right: @escaping (A.ElementType) -> B) -> Array<B.ElementType> where A: ArrayType, B: ArrayType {
    return left.flatMap(right)
}

// MARK: - DeferredType

extension DeferredType {
    public func flatMap <A> (_ transform: @escaping (ElementType) -> A) -> Deferred<A.ElementType> where A: DeferredType {
        return map(transform).joined
    }
}

public func >>- <A,B> (left: A, right: @escaping (A.ElementType) -> B) -> Deferred<B.ElementType> where A: DeferredType, B: DeferredType {
    return left.flatMap(right)
}

// MARK: - EffectType

extension EffectType {
    public func flatMap <A> (_ transform: @escaping (ElementType) -> A) -> Effect<A.ElementType> where A: EffectType {
        return map(transform).joined
    }
}

public func >>- <A,B> (left: A, right: @escaping (A.ElementType) -> B) -> Effect<B.ElementType> where A: EffectType, B: EffectType {
    return left.flatMap(right)
}

// MARK: - OptionalType

extension OptionalType {
    public func flatMap <A> (_ transform: @escaping (ElementType) -> A) -> Optional<A.ElementType> where A: OptionalType {
        return map(transform).joined
    }
}

public func >>- <A,B> (left: A, right: @escaping (A.ElementType) -> B) -> Optional<B.ElementType> where A: OptionalType, B: OptionalType {
    return left.flatMap(right)
}

// MARK: - ReaderType

extension ReaderType {
    public func flatMap <A> (_ transform: @escaping (ElementType) -> A) -> Reader<A.ElementType, EnvironmentType> where A: ReaderType, A.EnvironmentType == EnvironmentType {
        return map(transform).joined
    }
}

public func >>- <A,B,Z> (left: A, right: @escaping (A.ElementType) -> B) -> Reader<B.ElementType, Z> where A: ReaderType, B: ReaderType, A.EnvironmentType == Z, B.EnvironmentType == Z {
    return left.flatMap(right)
}

// MARK: - ResultType

extension ResultType {
    public func flatMap <A> (_ transform: @escaping (ElementType) -> A) -> Result<A.ElementType, ErrorType> where A: ResultType, A.ErrorType == ErrorType {
        return map(transform).joined
    }
}

public func >>- <A,B,Z> (left: A, right: @escaping (A.ElementType) -> B) -> Result<B.ElementType, Z> where A: ResultType, B: ResultType, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
    return left.flatMap(right)
}

// MARK: - WriterType

extension WriterType {
    public func flatMap <A> (_ transform: @escaping (ElementType) -> A) -> Writer<A.ElementType, LogType> where A: WriterType, A.LogType == LogType {
        return map(transform).joined
    }
}

public func >>- <A,B,Z> (left: A, right: @escaping (A.ElementType) -> B) -> Writer<B.ElementType, Z> where A: WriterType, B: WriterType, A.LogType == Z, B.LogType == Z, Z: Monoid {
    return left.flatMap(right)
}

