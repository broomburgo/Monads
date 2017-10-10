// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



//: `functorLaws` definitions

@testable import Monads
import Abstract
import Functional

extension Law {
    enum Functor {
// MARK: - Array
        enum OnArray {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Array<A>.pure(value).map(F.identity) == F.identity(Array<A>.pure(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = try! F.flip(Array<A>.map)(f)
                let mapG = try! F.flip(Array<B>.map)(g)
                return try! Array.pure(value).map(g • f) == (mapG • mapF § Array.pure(value))
            }
        }
// MARK: - Deferred
        enum OnDeferred {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Deferred<A>.pure(value).map(F.identity) == F.identity(Deferred<A>.pure(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Deferred<A>.map)(f)
                let mapG = F.flip(Deferred<B>.map)(g)
                return Deferred.pure(value).map(g • f) == (mapG • mapF § Deferred.pure(value))
            }
        }
// MARK: - Effect
        enum OnEffect {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Effect<A>.pure(value).map(F.identity) == F.identity(Effect<A>.pure(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Effect<A>.map)(f)
                let mapG = F.flip(Effect<B>.map)(g)
                return Effect.pure(value).map(g • f) == (mapG • mapF § Effect.pure(value))
            }
        }
// MARK: - Optional
        enum OnOptional {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Optional<A>.pure(value).map(F.identity) == F.identity(Optional<A>.pure(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = try! F.flip(Optional<A>.map)(f)
                let mapG = try! F.flip(Optional<B>.map)(g)
                return try! Optional.pure(value).map(g • f) == (mapG • mapF § Optional.pure(value))
            }
        }
// MARK: - Reader
		enum OnReader {
			static func identity <A> (_ value: A, _ context: String) -> Bool where A: Equatable {
				return (Reader<A,String>.pure(value).map(F.identity) == F.identity(Reader<A,String>.pure(value)))(context)
			}

			static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C, _ context: String) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Reader<A,String>.map)(f)
				let mapG = F.flip(Reader<B,String>.map)(g)
				return (Reader.pure(value).map(g • f) == (mapG • mapF § Reader.pure(value)))(context)
			}
		}
// MARK: - Result
        enum OnResult {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Result<A,AnyError>.pure(value).map(F.identity) == F.identity(Result<A,AnyError>.pure(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Result<A,AnyError>.map)(f)
                let mapG = F.flip(Result<B,AnyError>.map)(g)
                return Result.pure(value).map(g • f) == (mapG • mapF § Result.pure(value))
            }
        }
// MARK: - Writer
        enum OnWriter {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Writer<A,String>.pure(value).map(F.identity) == F.identity(Writer<A,String>.pure(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Writer<A,String>.map)(f)
                let mapG = F.flip(Writer<B,String>.map)(g)
                return Writer.pure(value).map(g • f) == (mapG • mapF § Writer.pure(value))
            }
        }
    }
}
