//
//  MainViewControllerTests.swift
//  CodemashTestingDemo
//
//  Created by Matt on 12/30/16.
//  Copyright © 2016 None. All rights reserved.
//

import XCTest
@testable import CodemashTestingDemo

class MainViewControllerTests: XCTestCase {
    
    func testThatOutletsAreWiredUp() {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        
        // wire up outlets
        _ = viewController.view
   
        XCTAssertNotNil(viewController.greetingLabel)
        XCTAssertNotNil(viewController.nameTextField)
        XCTAssertNotNil(viewController.updateGreetingAction)
    }

    func testThatGreetingLabelIsUpdatedCorrectly() {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController

        // wire up outlets
        _ = viewController.view
  
        XCTAssertEqual(viewController.greetingLabel.text, "Hello CodeMash!")
        
        viewController.nameTextField.text = "Matt"
        viewController.updateGreetingAction(sender: self)
        XCTAssertEqual(viewController.greetingLabel.text, "Hello Matt!")
    }
}
