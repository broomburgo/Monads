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
                return (Array<(A)->A>.init(F.identity) <*> Array<A>.init(value)) == Array<A>.init(value)
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Array<(A)->B>.init(f) <*> Array<A>.init(value)) == Array<B>.init(f(value))
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Array<(A)->B>.init(f) <*> Array<A>.init(value)) == (Array.init({ $0(value) }) <*> (Array<(A)->B>.init(f)))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Array.init(curry(•)) <*> Array<(B)->C>.init(g) <*> Array<(A)->B>.init(f) <*> Array<A>.init(value)) == (Array<(B)->C>.init(g) <*> (Array<(A)->B>.init(f) <*> Array<A>.init(value)))
            }
        }

// MARK: - Optional
        enum OnOptional {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return (Optional<(A)->A>.init(F.identity) <*> Optional<A>.init(value)) == Optional<A>.init(value)
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Optional<(A)->B>.init(f) <*> Optional<A>.init(value)) == Optional<B>.init(f(value))
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Optional<(A)->B>.init(f) <*> Optional<A>.init(value)) == (Optional.init({ $0(value) }) <*> (Optional<(A)->B>.init(f)))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Optional.init(curry(•)) <*> Optional<(B)->C>.init(g) <*> Optional<(A)->B>.init(f) <*> Optional<A>.init(value)) == (Optional<(B)->C>.init(g) <*> (Optional<(A)->B>.init(f) <*> Optional<A>.init(value)))
            }
        }

// MARK: - Result
        enum OnResult {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return (Result<(A)->A,AnyError>.init(F.identity) <*> Result<A,AnyError>.init(value)) == Result<A,AnyError>.init(value)
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Result<(A)->B,AnyError>.init(f) <*> Result<A,AnyError>.init(value)) == Result<B,AnyError>.init(f(value))
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Result<(A)->B,AnyError>.init(f) <*> Result<A,AnyError>.init(value)) == (Result.init({ $0(value) }) <*> (Result<(A)->B,AnyError>.init(f)))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Result.init(curry(•)) <*> Result<(B)->C,AnyError>.init(g) <*> Result<(A)->B,AnyError>.init(f) <*> Result<A,AnyError>.init(value)) == (Result<(B)->C,AnyError>.init(g) <*> (Result<(A)->B,AnyError>.init(f) <*> Result<A,AnyError>.init(value)))
            }
        }

// MARK: - Writer
        enum OnWriter {
            static func identity <A> (_ value: A) -> Bool where A: Equatable {
                return (Writer<(A)->A,String>.init(F.identity) <*> Writer<A,String>.init(value)) == Writer<A,String>.init(value)
            }

            static func homomorphism <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Writer<(A)->B,String>.init(f) <*> Writer<A,String>.init(value)) == Writer<B,String>.init(f(value))
            }

            static func interchange <A,B> (_ value: A, _ f: @escaping (A) -> B) -> Bool where A: Equatable, B: Equatable {
                return (Writer<(A)->B,String>.init(f) <*> Writer<A,String>.init(value)) == (Writer.init({ $0(value) }) <*> (Writer<(A)->B,String>.init(f)))
            }

            static func composition<A,B,C>(_ value: A, _ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> Bool where A: Equatable, B: Equatable, C: Equatable {
                return (Writer.init(curry(•)) <*> Writer<(B)->C,String>.init(g) <*> Writer<(A)->B,String>.init(f) <*> Writer<A,String>.init(value)) == (Writer<(B)->C,String>.init(g) <*> (Writer<(A)->B,String>.init(f) <*> Writer<A,String>.init(value)))
            }
        }

    }
}
