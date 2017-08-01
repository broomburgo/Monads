import XCTest
import SwiftCheck
@testable import Monads

class OptionalTypeTests: XCTestCase {
	func testGetOr() {
		property("get(or:) will select self value if not nil, else value if nil") <- forAll { (optionalOf: OptionalOf<Int>, elseValue: Int) in
			let optional = optionalOf.getOptional
			let expected = (optional == nil) ? elseValue : optional!
			return optional.get(or: elseValue) == expected
		}
	}
}
