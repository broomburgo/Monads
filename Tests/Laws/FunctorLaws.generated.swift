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
                return Array<A>.init(value).map(F.identity) == F.identity(Array<A>.init(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = try! F.flip(Array<A>.map)(f)
                let mapG = try! F.flip(Array<B>.map)(g)
                return try! Array.init(value).map(g • f) == (mapG • mapF § Array.init(value))
            }
        }
// MARK: - Deferred
        enum OnDeferred {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Deferred<A>.init(value).map(F.identity) == F.identity(Deferred<A>.init(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Deferred<A>.map)(f)
                let mapG = F.flip(Deferred<B>.map)(g)
                return Deferred.init(value).map(g • f) == (mapG • mapF § Deferred.init(value))
            }
        }
// MARK: - Effect
        enum OnEffect {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Effect<A>.init(value).map(F.identity) == F.identity(Effect<A>.init(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Effect<A>.map)(f)
                let mapG = F.flip(Effect<B>.map)(g)
                return Effect.init(value).map(g • f) == (mapG • mapF § Effect.init(value))
            }
        }
// MARK: - Optional
        enum OnOptional {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Optional<A>.init(value).map(F.identity) == F.identity(Optional<A>.init(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = try! F.flip(Optional<A>.map)(f)
                let mapG = try! F.flip(Optional<B>.map)(g)
                return try! Optional.init(value).map(g • f) == (mapG • mapF § Optional.init(value))
            }
        }
// MARK: - Reader
		enum OnReader {
			static func identity <A> (_ value: A, _ context: String) -> Bool where A: Equatable {
				return (Reader<A,String>.init(value).map(F.identity) == F.identity(Reader<A,String>.init(value)))(context)
			}

			static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C, _ context: String) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Reader<A,String>.map)(f)
				let mapG = F.flip(Reader<B,String>.map)(g)
				return (Reader.init(value).map(g • f) == (mapG • mapF § Reader.init(value)))(context)
			}
		}
// MARK: - Result
        enum OnResult {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Result<A,AnyError>.init(value).map(F.identity) == F.identity(Result<A,AnyError>.init(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Result<A,AnyError>.map)(f)
                let mapG = F.flip(Result<B,AnyError>.map)(g)
                return Result.init(value).map(g • f) == (mapG • mapF § Result.init(value))
            }
        }
// MARK: - Writer
        enum OnWriter {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Writer<A,String>.init(value).map(F.identity) == F.identity(Writer<A,String>.init(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
				let mapF = F.flip(Writer<A,String>.map)(f)
                let mapG = F.flip(Writer<B,String>.map)(g)
                return Writer.init(value).map(g • f) == (mapG • mapF § Writer.init(value))
            }
        }
    }
}
