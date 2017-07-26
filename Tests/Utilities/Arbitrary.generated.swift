// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import SwiftCheck
@testable import Monads










// MARK: - Arbitrary for structs and classes

// MARK: - Arbitrary for enums

struct ResultOf<T,E>: Arbitrary where T: Arbitrary, E: Error & Arbitrary {
    let getResult: Result<T,E>
    init(_ getResult: Result<T,E>) {
        self.getResult = getResult
    }

    public static var arbitrary: Gen<ResultOf<T,E>> {
        return Gen<Result<T,E>>.one(of: [
            T.arbitrary.map(Result.success),
            E.arbitrary.map(Result.failure),
            Gen.pure(Result<T,E>.cancel)
        ]).map(ResultOf<T,E>.init)
    }
}

// MARK: - Arbitrary for function wrappers
