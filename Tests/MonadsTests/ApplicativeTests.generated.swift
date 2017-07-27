// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `applicativeLaws` definitions; requires `fixedTypesForTests`

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

// MARK: - Deferred
    func testDeferred() {
        property("Applicative law: identity") <- forAll { (a: Int) in
            Law.Applicative.OnDeferred.identity(a)
        }

        property("Applicative law: homomorphism") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnDeferred.homomorphism(a, af.getArrow)
        }

        property("Applicative law: interchange") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnDeferred.interchange(a, af.getArrow)
        }

        property("Applicative law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Applicative.OnDeferred.composition(a, af.getArrow, ag.getArrow)
        }
    }

// MARK: - Effect
    func testEffect() {
        property("Applicative law: identity") <- forAll { (a: Int) in
            Law.Applicative.OnEffect.identity(a)
        }

        property("Applicative law: homomorphism") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnEffect.homomorphism(a, af.getArrow)
        }

        property("Applicative law: interchange") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnEffect.interchange(a, af.getArrow)
        }

        property("Applicative law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Applicative.OnEffect.composition(a, af.getArrow, ag.getArrow)
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

// MARK: - Result
    func testResult() {
        property("Applicative law: identity") <- forAll { (a: Int) in
            Law.Applicative.OnResult.identity(a)
        }

        property("Applicative law: homomorphism") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnResult.homomorphism(a, af.getArrow)
        }

        property("Applicative law: interchange") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnResult.interchange(a, af.getArrow)
        }

        property("Applicative law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Applicative.OnResult.composition(a, af.getArrow, ag.getArrow)
        }
    }

// MARK: - Writer
    func testWriter() {
        property("Applicative law: identity") <- forAll { (a: Int) in
            Law.Applicative.OnWriter.identity(a)
        }

        property("Applicative law: homomorphism") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnWriter.homomorphism(a, af.getArrow)
        }

        property("Applicative law: interchange") <- forAll { (a: Int, af: ArrowOf<Int,Int>) in
            Law.Applicative.OnWriter.interchange(a, af.getArrow)
        }

        property("Applicative law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Applicative.OnWriter.composition(a, af.getArrow, ag.getArrow)
        }
    }

}
