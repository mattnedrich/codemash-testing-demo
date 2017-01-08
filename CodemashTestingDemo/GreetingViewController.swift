//
//  MainViewController.swift
//  CodemashTestingDemo
//
//  Created by Matt on 12/30/16.
//  Copyright © 2016 None. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func updateGreetingAction(_ sender: Any) {
        if let name = self.nameTextField.text {
            self.greetingLabel.text = "Hello \(name)!"
        }
        self.view.endEditing(true)
    }
}

