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
                return (Array<A>.init(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Array<A>.init(value) >>- Array<A>.init) == Array<A>.init(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Array<B>, _ g: @escaping (B) -> Array<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Array<A>.init(value) >>- f >>- g) == (Array<A>.init(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Deferred
        enum OnDeferred {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Deferred<B>) -> Bool where A: Equatable, B: Equatable {
                return (Deferred<A>.init(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Deferred<A>.init(value) >>- Deferred<A>.init) == Deferred<A>.init(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Deferred<B>, _ g: @escaping (B) -> Deferred<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Deferred<A>.init(value) >>- f >>- g) == (Deferred<A>.init(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Effect
        enum OnEffect {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Effect<B>) -> Bool where A: Equatable, B: Equatable {
                return (Effect<A>.init(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Effect<A>.init(value) >>- Effect<A>.init) == Effect<A>.init(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Effect<B>, _ g: @escaping (B) -> Effect<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Effect<A>.init(value) >>- f >>- g) == (Effect<A>.init(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Optional
        enum OnOptional {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Optional<B>) -> Bool where A: Equatable, B: Equatable {
                return (Optional<A>.init(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Optional<A>.init(value) >>- Optional<A>.init) == Optional<A>.init(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Optional<B>, _ g: @escaping (B) -> Optional<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Optional<A>.init(value) >>- f >>- g) == (Optional<A>.init(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Reader
		enum OnReader {
			static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Reader<B,String>, _ context: String) -> Bool where A: Equatable, B: Equatable {
				return ((Reader<A,String>.init(value) >>- f) == f(value))(context)
			}

			static func identityRight <A> (_ value: A, _ context: String) -> Bool where A: Equatable {
				return ((Reader<A,String>.init(value) >>- Reader<A,String>.init) == Reader<A,String>.init(value))(context)
			}

			static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Reader<B,String>, _ g: @escaping (B) -> Reader<C,String>, _ context: String) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				return ((Reader<A,String>.init(value) >>- f >>- g) == (Reader<A,String>.init(value) >>- { f($0) >>- g }))(context)
			}
		}
// MARK: - Result
        enum OnResult {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Result<B,AnyError>) -> Bool where A: Equatable, B: Equatable {
                return (Result<A,AnyError>.init(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Result<A,AnyError>.init(value) >>- Result<A,AnyError>.init) == Result<A,AnyError>.init(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Result<B,AnyError>, _ g: @escaping (B) -> Result<C,AnyError>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Result<A,AnyError>.init(value) >>- f >>- g) == (Result<A,AnyError>.init(value) >>- { f($0) >>- g })
            }
        }
// MARK: - Writer
        enum OnWriter {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Writer<B,String>) -> Bool where A: Equatable, B: Equatable {
                return (Writer<A,String>.init(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Writer<A,String>.init(value) >>- Writer<A,String>.init) == Writer<A,String>.init(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Writer<B,String>, _ g: @escaping (B) -> Writer<C,String>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Writer<A,String>.init(value) >>- f >>- g) == (Writer<A,String>.init(value) >>- { f($0) >>- g })
            }
        }
    }
}
