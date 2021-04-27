import XCTest
@testable import CocoTest

final class CocoTestTests: XCTestCase {
    func testColorRedEqual(){
        let color = CocoTest.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testRazeColorsAreEqual(){
        let color = CocoTest.colorFromHexString("006736")
        XCTAssertEqual(color, CocoTest.cocoColor)
        
    }
    static var allTests = [
        ("testColorRedEqual",testColorRedEqual),
        ("testRazeColorsEqual",testRazeColorsAreEqual)
    ]
}
