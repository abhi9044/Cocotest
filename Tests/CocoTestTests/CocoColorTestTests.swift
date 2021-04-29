import XCTest
@testable import CocoTest

final class CocoColorTestTests: XCTestCase {
    func testColorRedEqual(){
        let color = CocoTest.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testRazeColorsAreEqual(){
        let color = CocoTest.Color.fromHexString("006736")
        XCTAssertEqual(color, CocoTest.Color.cocoColor)
    }
    
    func testRazeSecondaryColorsAreEqual(){
        let color = CocoTest.Color.fromHexString("FCFFFD")
        XCTAssertEqual(color, CocoTest.Color.secondaryCocoColor)
    }
    
    static var allTests = [
        ("testColorRedEqual",testColorRedEqual),
        ("testRazeColorsEqual",testRazeColorsAreEqual),
        ("testSecondaryRazeColorsEqual",testRazeSecondaryColorsAreEqual)
    ]
}
