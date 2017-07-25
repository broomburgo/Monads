// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `applicativeLaws` definitions

@testable import Monads
import Operadics

extension Law {
    enum Applicative {
// MARK: - Array
        enum OnArray {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return (Array.init(F.identity) <*> Array.init(value)) == Array.init(value)
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Array.init(f) <*> Array.init(value)) == Array.init(f(value))
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Array.init(f) <*> Array.init(value)) == (Array.init({ $0(value) }) <*> (Array.init(f)))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Array.init(curry(•)) <*> Array.init(g) <*> Array.init(f) <*> Array.init(value)) == (Array.init(g) <*> (Array.init(f) <*> Array.init(value)))
            }
        }

// MARK: - Optional
        enum OnOptional {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return (Optional.init(F.identity) <*> Optional.init(value)) == Optional.init(value)
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Optional.init(f) <*> Optional.init(value)) == Optional.init(f(value))
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Optional.init(f) <*> Optional.init(value)) == (Optional.init({ $0(value) }) <*> (Optional.init(f)))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Optional.init(curry(•)) <*> Optional.init(g) <*> Optional.init(f) <*> Optional.init(value)) == (Optional.init(g) <*> (Optional.init(f) <*> Optional.init(value)))
            }
        }

    }
}
