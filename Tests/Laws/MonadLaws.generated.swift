// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `monadLaws` definitions

@testable import Monads
import Operadics

extension Law {
    enum Monad {
// MARK: - Array
        enum OnArray {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Array<B>) -> Bool where A: Equatable, B: Equatable {
                return (Array.init(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Array.init(value) >>- Array.init) == Array.init(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Array<B>, _ g: @escaping (B) -> Array<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Array.init(value) >>- f >>- g) == (Array.init(value) >>- { f($0) >>- g })
            }
        }

// MARK: - Optional
        enum OnOptional {
            static func identityLeft <A,B> (_ value: A, _ f: @escaping (A) -> Optional<B>) -> Bool where A: Equatable, B: Equatable {
                return (Optional.init(value) >>- f) == f(value)
            }

            static func identityRight <A> (_ value: A) -> Bool where A: Equatable {
                return (Optional.init(value) >>- Optional.init) == Optional.init(value)
            }

            static func associativity<A,B,C>(_ value: A, _ f: @escaping (A) -> Optional<B>, _ g: @escaping (B) -> Optional<C>) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Optional.init(value) >>- f >>- g) == (Optional.init(value) >>- { f($0) >>- g })
            }
        }

    }
}
