// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



//: `applicativeLaws` definitions

@testable import Monads
import Abstract

extension Law {
    enum Applicative {
// MARK: - Array
        enum OnArray {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Array<(A)->A>.init(F.identity)
				let a = Array<A>.init(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Array<(A)->B>.init(f)
				let a = Array<A>.init(value)
				let b = Array<B>.init(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Array<(A)->B>.init(f)
				let a = Array<A>.init(value)
                return (a_b <*> a) == (Array.init({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Array<(A)->B>.init(f)
				let b_c = Array<(B)->C>.init(g)
				let a = Array<A>.init(value)
				return (Array.init(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }

// MARK: - Deferred
        enum OnDeferred {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Deferred<(A)->A>.init(F.identity)
				let a = Deferred<A>.init(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Deferred<(A)->B>.init(f)
				let a = Deferred<A>.init(value)
				let b = Deferred<B>.init(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Deferred<(A)->B>.init(f)
				let a = Deferred<A>.init(value)
                return (a_b <*> a) == (Deferred.init({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Deferred<(A)->B>.init(f)
				let b_c = Deferred<(B)->C>.init(g)
				let a = Deferred<A>.init(value)
				return (Deferred.init(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }

// MARK: - Effect
        enum OnEffect {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Effect<(A)->A>.init(F.identity)
				let a = Effect<A>.init(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Effect<(A)->B>.init(f)
				let a = Effect<A>.init(value)
				let b = Effect<B>.init(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Effect<(A)->B>.init(f)
				let a = Effect<A>.init(value)
                return (a_b <*> a) == (Effect.init({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Effect<(A)->B>.init(f)
				let b_c = Effect<(B)->C>.init(g)
				let a = Effect<A>.init(value)
				return (Effect.init(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }

// MARK: - Optional
        enum OnOptional {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Optional<(A)->A>.init(F.identity)
				let a = Optional<A>.init(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Optional<(A)->B>.init(f)
				let a = Optional<A>.init(value)
				let b = Optional<B>.init(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Optional<(A)->B>.init(f)
				let a = Optional<A>.init(value)
                return (a_b <*> a) == (Optional.init({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Optional<(A)->B>.init(f)
				let b_c = Optional<(B)->C>.init(g)
				let a = Optional<A>.init(value)
				return (Optional.init(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }

// MARK: - Result
        enum OnResult {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Result<(A)->A,AnyError>.init(F.identity)
				let a = Result<A,AnyError>.init(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Result<(A)->B,AnyError>.init(f)
				let a = Result<A,AnyError>.init(value)
				let b = Result<B,AnyError>.init(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Result<(A)->B,AnyError>.init(f)
				let a = Result<A,AnyError>.init(value)
                return (a_b <*> a) == (Result.init({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Result<(A)->B,AnyError>.init(f)
				let b_c = Result<(B)->C,AnyError>.init(g)
				let a = Result<A,AnyError>.init(value)
				return (Result.init(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }

// MARK: - Writer
        enum OnWriter {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Writer<(A)->A,String>.init(F.identity)
				let a = Writer<A,String>.init(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Writer<(A)->B,String>.init(f)
				let a = Writer<A,String>.init(value)
				let b = Writer<B,String>.init(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Writer<(A)->B,String>.init(f)
				let a = Writer<A,String>.init(value)
                return (a_b <*> a) == (Writer.init({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Writer<(A)->B,String>.init(f)
				let b_c = Writer<(B)->C,String>.init(g)
				let a = Writer<A,String>.init(value)
				return (Writer.init(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }

    }
}
