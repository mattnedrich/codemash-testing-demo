//
//  UITestingDemoViewController.swift
//  CodemashTestingDemo
//
//  Created by Matt on 1/1/17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

class UITestingDemoViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var numberOfRowsLabel: UILabel!

    var tableViewArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.accessibilityIdentifier = "tableView"
    }
    
    @IBAction func addRowAction(_ sender: Any) {
        let cellName = self.tableViewArray.count + 1
        self.tableViewArray.append(String(cellName))
        let rowString = self.tableViewArray.count == 1 ? "row" : "rows"
        self.numberOfRowsLabel.text = "The table contains \(self.tableViewArray.count) \(rowString)"
        self.tableView.reloadData()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "myCell")
        let cellLabel: UILabel = cell!.contentView.viewWithTag(2) as! UILabel
        cellLabel.text = "Row \(self.tableViewArray[indexPath.row])"
        return cell!
    }
}
