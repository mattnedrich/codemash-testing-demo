//
//  QuickSimpleAdderTests.swift
//  CodemashTestingDemo
//
//  Created by Matt on 1/8/17.
//  Copyright © 2017 None. All rights reserved.
//

@testable import CodemashTestingDemo
import Quick
import Nimble

class QuickSimpleAdderTests: QuickSpec {
    override func spec() {
        describe("SimpleAdder") {
            it("can add two numbers") {
                let simpleAdder = SimpleAdder()
                let result = simpleAdder.add(a: 5, b: 4)
                expect(result).to(equal(9))
            }
        }
    }
}
