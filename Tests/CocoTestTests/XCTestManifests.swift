import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CocoColorTestTests.allTests),
        testCase(CocoNetworkingTest.allTest),
    ]
}
#endif
