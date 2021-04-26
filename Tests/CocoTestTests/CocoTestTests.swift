import XCTest
@testable import CocoTest

final class CocoTestTests: XCTestCase {
    func testColorRedEqual(){
        let color = CocoTest.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    static var allTests = [
        ("testColorRedEqual",testColorRedEqual)
    ]
}
