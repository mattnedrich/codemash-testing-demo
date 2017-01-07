//
//  NetworkAdderTests.swift
//  CodemashTestingDemo
//
//  Created by Matt on 12/30/16.
//  Copyright © 2016 None. All rights reserved.
//

import XCTest
@testable import CodemashTestingDemo

class NetworkAdderTests: XCTestCase {
    
    class MockNetworkAdder: NetworkAdder {
        override func getNumberFromNetwork(networkCallback: @escaping (Int) -> Void) {
            networkCallback(5) // force getNumberFromNetwork to always return 5
        }
    }
    
    func testAdd() {
        let exp = expectation(description: "expect resultCallback to be called with the correct sum")
        
        let networkAdder = MockNetworkAdder()
        networkAdder.add(userProvidedNumber: 5, resultCalback: { resultSum in
            XCTAssertEqual(resultSum, 10)
            exp.fulfill()
        })
        
        waitForExpectations(timeout: 2, handler: nil)
    }
}
