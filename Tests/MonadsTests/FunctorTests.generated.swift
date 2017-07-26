// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `functorLaws` definitions; requires `fixedTypesForTests`

import XCTest
@testable import Monads
import SwiftCheck

class FunctorLawsTests: XCTestCase {
// MARK: - Array
    func testArray() {
        property("Functor law: identity") <- forAll { (a: Int) in
            Law.Functor.OnArray.identity(a)
        }

        property("Functor law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Functor.OnArray.composition(a, af.getArrow, ag.getArrow)
        }
    }

// MARK: - Optional
    func testOptional() {
        property("Functor law: identity") <- forAll { (a: Int) in
            Law.Functor.OnOptional.identity(a)
        }

        property("Functor law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Functor.OnOptional.composition(a, af.getArrow, ag.getArrow)
        }
    }

// MARK: - Result
    func testResult() {
        property("Functor law: identity") <- forAll { (a: Int) in
            Law.Functor.OnResult.identity(a)
        }

        property("Functor law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Functor.OnResult.composition(a, af.getArrow, ag.getArrow)
        }
    }

// MARK: - Writer
    func testWriter() {
        property("Functor law: identity") <- forAll { (a: Int) in
            Law.Functor.OnWriter.identity(a)
        }

        property("Functor law: composition") <- forAll { (a: Int, af: ArrowOf<Int,Int>, ag: ArrowOf<Int,Int>) in
            Law.Functor.OnWriter.composition(a, af.getArrow, ag.getArrow)
        }
    }

}
