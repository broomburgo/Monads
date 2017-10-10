// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



//: `monadLaws` definitions

@testable import Monads
import Abstract

extension Law {
    enum Monad {
// MARK: - Array
        enum OnArray {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Array<B>) -> Bool where A: Equatable, B: Equatable {
                return (Array<A>.pure(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Array<A>.pure(value) >>- Array<A>.pure) == Array<A>.pure(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Array<B>, _ g: @escaping (B) -> Array<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Array<A>.pure(value) >>- f >>- g) == (Array<A>.pure(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Deferred
        enum OnDeferred {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Deferred<B>) -> Bool where A: Equatable, B: Equatable {
                return (Deferred<A>.pure(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Deferred<A>.pure(value) >>- Deferred<A>.pure) == Deferred<A>.pure(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Deferred<B>, _ g: @escaping (B) -> Deferred<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Deferred<A>.pure(value) >>- f >>- g) == (Deferred<A>.pure(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Effect
        enum OnEffect {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Effect<B>) -> Bool where A: Equatable, B: Equatable {
                return (Effect<A>.pure(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Effect<A>.pure(value) >>- Effect<A>.pure) == Effect<A>.pure(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Effect<B>, _ g: @escaping (B) -> Effect<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Effect<A>.pure(value) >>- f >>- g) == (Effect<A>.pure(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Optional
        enum OnOptional {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Optional<B>) -> Bool where A: Equatable, B: Equatable {
                return (Optional<A>.pure(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Optional<A>.pure(value) >>- Optional<A>.pure) == Optional<A>.pure(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Optional<B>, _ g: @escaping (B) -> Optional<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Optional<A>.pure(value) >>- f >>- g) == (Optional<A>.pure(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Reader
		enum OnReader {
			static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Reader<B,String>, _ context: String) -> Bool where A: Equatable, B: Equatable {
				return ((Reader<A,String>.pure(value) >>- f) == f(value))(context)
			}

			static func identityRight <A> (_ value: A, _ context: String) -> Bool where A: Equatable {
				return ((Reader<A,String>.pure(value) >>- Reader<A,String>.pure) == Reader<A,String>.pure(value))(context)
			}

			static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Reader<B,String>, _ g: @escaping (B) -> Reader<C,String>, _ context: String) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				return ((Reader<A,String>.pure(value) >>- f >>- g) == (Reader<A,String>.pure(value) >>- { f($0) >>- g }))(context)
			}
		}
// MARK: - Result
        enum OnResult {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Result<B,AnyError>) -> Bool where A: Equatable, B: Equatable {
                return (Result<A,AnyError>.pure(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Result<A,AnyError>.pure(value) >>- Result<A,AnyError>.pure) == Result<A,AnyError>.pure(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Result<B,AnyError>, _ g: @escaping (B) -> Result<C,AnyError>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Result<A,AnyError>.pure(value) >>- f >>- g) == (Result<A,AnyError>.pure(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Writer
        enum OnWriter {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Writer<B,String>) -> Bool where A: Equatable, B: Equatable {
                return (Writer<A,String>.pure(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Writer<A,String>.pure(value) >>- Writer<A,String>.pure) == Writer<A,String>.pure(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Writer<B,String>, _ g: @escaping (B) -> Writer<C,String>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Writer<A,String>.pure(value) >>- f >>- g) == (Writer<A,String>.pure(value) >>- { f($0) >>- g })
            }
        }
    }
}
