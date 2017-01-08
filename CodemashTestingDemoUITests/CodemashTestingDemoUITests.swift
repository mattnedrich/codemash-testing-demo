//
//  CodemashTestingDemoUITests.swift
//  CodemashTestingDemoUITests
//
//  Created by Matt on 12/30/16.
//  Copyright © 2016 None. All rights reserved.
//

import XCTest

class CodemashTestingDemoUITests: BaseUITest {
        
    func testGreetingScreen() {
        XCTAssertEqual(app!.staticTexts["greetingLabel"].label, "Hello CodeMash!")
        
        app!.textFields["greetingTextBox"].tap()
        app!.typeText("Matt")
        app!.buttons["Update Greeting"].tap()

        XCTAssertEqual(app!.staticTexts["greetingLabel"].label, "Hello Matt!")
    }

    func testTableDemoScreen() {
        app!.tabBars.buttons["Example 2"].tap()
        
        let addRowButton = app!.buttons["addRowButton"]
        XCTAssertEqual(app!.tables["tableView"].cells.count, 0)
        XCTAssertEqual(app!.staticTexts["numTableViewRowsLabel"].label, "0 Rows")

        addRowButton.tap()
        XCTAssertEqual(app!.tables["tableView"].cells.count, 1)
        XCTAssertEqual(app!.staticTexts["numTableViewRowsLabel"].label, "The table contains 1 row")

        addRowButton.tap()
        XCTAssertEqual(app!.tables["tableView"].cells.count, 2)
        XCTAssertEqual(app!.staticTexts["numTableViewRowsLabel"].label, "The table contains 2 rows")
    }
    
    func testRecord() {
        
    }
}
