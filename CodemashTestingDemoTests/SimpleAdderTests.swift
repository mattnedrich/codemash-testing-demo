//
//  SimpleAdderTests.swift
//  CodemashTestingDemo
//
//  Created by Matt on 12/30/16.
//  Copyright © 2016 None. All rights reserved.
//

import XCTest
@testable import CodemashTestingDemo

class SimpleAdderTests: XCTestCase {
    func testAddTwoNumbers() {
        let simpleAdder = SimpleAdder()
        let result = simpleAdder.add(a: 5, b: 4)
        XCTAssertEqual(result, 9)
    }
}

