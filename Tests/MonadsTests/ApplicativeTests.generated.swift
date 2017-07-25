// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `applicativeLaws` definitions; requires `fixedTypesForPropertyBasedTests`

import XCTest
@testable import Monads
import SwiftCheck

class ApplicativeLawsTests: XCTestCase {
// MARK: - Array
    func testArray() {
        property("Applicative law: identity") <- forAll { (a: Int) in
            Law.Applicative.OnArray.identity(a)
        }

        property("Applicative law: homomorphism") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnArray.homomorphism(a, af.getArrow)
        }

        property("Applicative law: interchange") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnArray.interchange(a, af.getArrow)
        }

        property("Applicative law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Applicative.OnArray.composition(a, af.getArrow, ag.getArrow)
        }
    }

// MARK: - Optional
    func testOptional() {
        property("Applicative law: identity") <- forAll { (a: Int) in
            Law.Applicative.OnOptional.identity(a)
        }

        property("Applicative law: homomorphism") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnOptional.homomorphism(a, af.getArrow)
        }

        property("Applicative law: interchange") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnOptional.interchange(a, af.getArrow)
        }

        property("Applicative law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Applicative.OnOptional.composition(a, af.getArrow, ag.getArrow)
        }
    }

}
