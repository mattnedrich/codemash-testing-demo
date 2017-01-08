//
//  QuickNetworkAdderTests.swift
//  CodemashTestingDemo
//
//  Created by Matt on 1/8/17.
//  Copyright © 2017 None. All rights reserved.
//

@testable import CodemashTestingDemo
import Quick
import Nimble

class QuickNetworkAdderTests: QuickSpec {

    class MockNetworkAdder: NetworkAdder {
        override func getNumberFromNetwork(networkCallback: @escaping (Int) -> Void) {
            networkCallback(5) // force getNumberFromNetwork to always return 5
        }
    }
    
    override func spec() {
        describe("NetworkAdder") {
            it("can add two numbers") {
                var result = 0
                let networkAdder = MockNetworkAdder()
                
                networkAdder.add(userProvidedNumber: 5, resultCalback: { resultSum in
                    result = resultSum
                })
                
                expect(result).toEventually(equal(10))
            }
        }
    }
}
