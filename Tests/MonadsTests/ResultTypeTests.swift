import XCTest
import SwiftCheck
@testable import Monads

class ResultTypeTests: XCTestCase {
	func testZip() {
		let x = Result<Int,String>.success(42)
		let y = Result<String,String>.success("42")
		let z = Result.zip(x,y)
		XCTAssertTrue(z.toOptionalValue! == (42,"42"))
	}
}
