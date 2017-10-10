// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



//: `applicativeLaws` definitions

@testable import Monads
import Abstract
import Functional

extension Law {
    enum Applicative {
// MARK: - Array
        enum OnArray {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Array<(A)->A>.pure(F.identity)
				let a = Array<A>.pure(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Array<(A)->B>.pure(f)
				let a = Array<A>.pure(value)
				let b = Array<B>.pure(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Array<(A)->B>.pure(f)
				let a = Array<A>.pure(value)
                return (a_b <*> a) == (Array.pure({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Array<(A)->B>.pure(f)
				let b_c = Array<(B)->C>.pure(g)
				let a = Array<A>.pure(value)
				return (Array.pure(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }
// MARK: - Deferred
        enum OnDeferred {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Deferred<(A)->A>.pure(F.identity)
				let a = Deferred<A>.pure(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Deferred<(A)->B>.pure(f)
				let a = Deferred<A>.pure(value)
				let b = Deferred<B>.pure(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Deferred<(A)->B>.pure(f)
				let a = Deferred<A>.pure(value)
                return (a_b <*> a) == (Deferred.pure({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Deferred<(A)->B>.pure(f)
				let b_c = Deferred<(B)->C>.pure(g)
				let a = Deferred<A>.pure(value)
				return (Deferred.pure(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }
// MARK: - Effect
        enum OnEffect {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Effect<(A)->A>.pure(F.identity)
				let a = Effect<A>.pure(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Effect<(A)->B>.pure(f)
				let a = Effect<A>.pure(value)
				let b = Effect<B>.pure(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Effect<(A)->B>.pure(f)
				let a = Effect<A>.pure(value)
                return (a_b <*> a) == (Effect.pure({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Effect<(A)->B>.pure(f)
				let b_c = Effect<(B)->C>.pure(g)
				let a = Effect<A>.pure(value)
				return (Effect.pure(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }
// MARK: - Optional
        enum OnOptional {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Optional<(A)->A>.pure(F.identity)
				let a = Optional<A>.pure(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Optional<(A)->B>.pure(f)
				let a = Optional<A>.pure(value)
				let b = Optional<B>.pure(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Optional<(A)->B>.pure(f)
				let a = Optional<A>.pure(value)
                return (a_b <*> a) == (Optional.pure({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Optional<(A)->B>.pure(f)
				let b_c = Optional<(B)->C>.pure(g)
				let a = Optional<A>.pure(value)
				return (Optional.pure(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }
// MARK: - Reader
		enum OnReader {
			static func identity <A> (_ value: A, _ context: String) -> Bool where A: Equatable {
				let a_a = Reader<(A)->A,String>.pure(F.identity)
				let a = Reader<A,String>.pure(value)
				return ((a_a <*> a) == a)(context)
			}

			static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B, _ context: String) -> Bool where A: Equatable, B: Equatable {
				let a_b = Reader<(A)->B,String>.pure(f)
				let a = Reader<A,String>.pure(value)
				let b = Reader<B,String>.pure(f(value))
				return ((a_b <*> a) == b)(context)
			}

			static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B, _ context: String) -> Bool where A: Equatable, B: Equatable {
				let a_b = Reader<(A)->B,String>.pure(f)
				let a = Reader<A,String>.pure(value)
				return ((a_b <*> a) == (Reader.pure({ $0(value) }) <*> a_b))(context)
			}

			static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C, _ context: String) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Reader<(A)->B,String>.pure(f)
				let b_c = Reader<(B)->C,String>.pure(g)
				let a = Reader<A,String>.pure(value)
				return ((Reader.pure(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a)))(context)
			}
		}
// MARK: - Result
        enum OnResult {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Result<(A)->A,AnyError>.pure(F.identity)
				let a = Result<A,AnyError>.pure(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Result<(A)->B,AnyError>.pure(f)
				let a = Result<A,AnyError>.pure(value)
				let b = Result<B,AnyError>.pure(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Result<(A)->B,AnyError>.pure(f)
				let a = Result<A,AnyError>.pure(value)
                return (a_b <*> a) == (Result.pure({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Result<(A)->B,AnyError>.pure(f)
				let b_c = Result<(B)->C,AnyError>.pure(g)
				let a = Result<A,AnyError>.pure(value)
				return (Result.pure(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }
// MARK: - Writer
        enum OnWriter {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
				let a_a = Writer<(A)->A,String>.pure(F.identity)
				let a = Writer<A,String>.pure(value)
				return (a_a <*> a) == a
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Writer<(A)->B,String>.pure(f)
				let a = Writer<A,String>.pure(value)
				let b = Writer<B,String>.pure(f(value))
                return (a_b <*> a) == b
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
				let a_b = Writer<(A)->B,String>.pure(f)
				let a = Writer<A,String>.pure(value)
                return (a_b <*> a) == (Writer.pure({ $0(value) }) <*> a_b)
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let a_b = Writer<(A)->B,String>.pure(f)
				let b_c = Writer<(B)->C,String>.pure(g)
				let a = Writer<A,String>.pure(value)
				return (Writer.pure(F.curry(•)) <*> b_c <*> a_b <*> a) == (b_c <*> (a_b <*> a))
            }
        }
    }
}
