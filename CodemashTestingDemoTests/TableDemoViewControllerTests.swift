//
//  TableDemoViewControllerTests.swift
//  CodemashTestingDemo
//
//  Created by Matt on 1/8/17.
//  Copyright © 2017 None. All rights reserved.
//

import XCTest
@testable import CodemashTestingDemo

class TableDemoViewControllerTests: XCTestCase {
    
    func testThatOutletsAreWiredUp() {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "TableDemoViewController") as! TableDemoViewController
        
        // wire up outlets
        _ = viewController.view
   
        XCTAssertNotNil(viewController.tableView)
        XCTAssertNotNil(viewController.numberOfRowsLabel)
        XCTAssertNotNil(viewController.addRowAction)
    }
    
    func testThatAddActionUpdatesTableView() {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "TableDemoViewController") as! TableDemoViewController
        
        // wire up outlets
        _ = viewController.view
        
        XCTAssertEqual(viewController.tableViewArray.count, 0)
        XCTAssertEqual(viewController.numberOfRowsLabel.text, "0 Rows")
        
        viewController.addRowAction(self)
        
        XCTAssertEqual(viewController.tableViewArray.count, 1)
        XCTAssertEqual(viewController.numberOfRowsLabel.text, "The table contains 1 row")
    }
}
