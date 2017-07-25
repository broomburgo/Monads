// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `monadLaws` definitions; requires `fixedTypesForPropertyBasedTests`

import XCTest
@testable import Monads
import SwiftCheck

class MonadLawsTests: XCTestCase {
// MARK: - Array
    func testArray() {
        property("Monad law: identity left") <- forAll { (a: Int, af: ArrowOf<Int,ArrayOf<Int>>) in
            Law.Monad.OnArray.identityLeft(a, { af.getArrow($0).getArray })
        }

        property("Monad law: identity right") <- forAll { (a: Int) in
            Law.Monad.OnArray.identityRight(a)
        }

        property("Monad law: associativity") <- forAll { (a: Int, af: ArrowOf<Int,ArrayOf<Int>>, ag: ArrowOf<Int,ArrayOf<Int>>) in
            Law.Monad.OnArray.associativity(a, { af.getArrow($0).getArray }, { ag.getArrow($0).getArray })
        }
    }

// MARK: - Optional
    func testOptional() {
        property("Monad law: identity left") <- forAll { (a: Int, af: ArrowOf<Int,OptionalOf<Int>>) in
            Law.Monad.OnOptional.identityLeft(a, { af.getArrow($0).getOptional })
        }

        property("Monad law: identity right") <- forAll { (a: Int) in
            Law.Monad.OnOptional.identityRight(a)
        }

        property("Monad law: associativity") <- forAll { (a: Int, af: ArrowOf<Int,OptionalOf<Int>>, ag: ArrowOf<Int,OptionalOf<Int>>) in
            Law.Monad.OnOptional.associativity(a, { af.getArrow($0).getOptional }, { ag.getArrow($0).getOptional })
        }
    }

}
