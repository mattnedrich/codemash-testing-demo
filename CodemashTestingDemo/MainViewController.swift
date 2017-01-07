//
//  MainViewController.swift
//  CodemashTestingDemo
//
//  Created by Matt on 12/30/16.
//  Copyright © 2016 None. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
   
    @IBAction func updateGreetingAction(_ sender: Any) {
        if let name = self.nameTextField.text {
            self.greetingLabel.text = "Hello \(name)!"
        }
    }
    
}

