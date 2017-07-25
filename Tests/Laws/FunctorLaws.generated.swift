// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `functorLaws` definitions

@testable import Monads
import Operadics

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
                return try! Array(value).map(g • f) == (mapG • mapF § Array(value))
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
                return try! Optional(value).map(g • f) == (mapG • mapF § Optional(value))
            }
        }

    }
}
