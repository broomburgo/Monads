// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



//: `functorLaws` definitions

@testable import Monads
import Abstract

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

// MARK: - Result
        enum OnResult {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Result<A,AnyError>.init(value).map(F.identity) == F.identity(Result<A,AnyError>.init(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                let mapF = try! F.flip(Result<A,AnyError>.map)(f)
                let mapG = try! F.flip(Result<B,AnyError>.map)(g)
                return try! Result.init(value).map(g • f) == (mapG • mapF § Result.init(value))
            }
        }

// MARK: - Writer
        enum OnWriter {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return Writer<A,String>.init(value).map(F.identity) == F.identity(Writer<A,String>.init(value))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                let mapF = try! F.flip(Writer<A,String>.map)(f)
                let mapG = try! F.flip(Writer<B,String>.map)(g)
                return try! Writer.init(value).map(g • f) == (mapG • mapF § Writer.init(value))
            }
        }

    }
}
