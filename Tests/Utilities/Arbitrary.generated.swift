// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import SwiftCheck
@testable import Monads










// MARK: - Arbitrary for structs and classes

struct WriterOf<T,L>: Arbitrary where T: Arbitrary, L: LogType & Arbitrary {
    let getWriter: Writer<T,L>
    init(_ getWriter: Writer<T,L>) {
        self.getWriter = getWriter
    }

    public static var arbitrary: Gen<WriterOf<T,L>> {
        return Gen<Writer<T,L>>
            .compose {
                Writer<T,L>.init(
                    value: $0.generate(), 
                    log: $0.generate()
                )
            }
            .map(WriterOf<T,L>.init)
    }
}

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
