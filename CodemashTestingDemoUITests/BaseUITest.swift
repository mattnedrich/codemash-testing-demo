//
//  BaseUITest.swift
//  CodemashTestingDemo
//
//  Created by Matt on 1/8/17.
//  Copyright © 2017 None. All rights reserved.
//

import XCTest

class BaseUITest: XCTestCase {
    var app: XCUIApplication?
    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app!.launchArguments.append("UITesting")
        continueAfterFailure = false
        app!.launch()
        sleep(1) // prevents occasional test failures
    }
}
