//
//  CocoNetworkingTest.swift
//  CocoTestTests
//
//  Created by Abhishek Singh on 29/04/21.
//

import XCTest
@testable import CocoTest

final class CocoNetworkingTest: XCTestCase {
    func testExample() throws {
      
    }
    func testLoadDataCall(){
        let manager = CocoTest.Networking.Manager()
        let expectation = XCTestExpectation(description: "Called for data")
        guard  let url = URL(string: "https://raywenderlich.com") else {
           return XCTFail("could not create url properly")
        }
        manager.loadData(from:url){ result in
            expectation.fulfill()
            switch result{
            case .success(let returnedData):
                XCTAssertNotNil(returnedData,"response data is nil")
                
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "error in result")
            }
        }
        wait(for: [expectation], timeout: 5)
    }
    static var allTest = [
    ("testLoadDataCall",testLoadDataCall)
    ]
}
