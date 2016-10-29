//
//  RequestTutorVC.swift
//  TFOWepo
//
//  Created by Dylan on 8/21/16.
//  Copyright © 2016 DIG Productions. All rights reserved.
//

import Foundation
import UIKit

class RequestTutorVC: UITableViewController {
    
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var gradePicker: UIPickerView!
    @IBOutlet weak var subjectsTable: UITableView!
    
    let subjectsTableController = SubjectsTableController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsSelection = false
        
        subjectsTable.dataSource = subjectsTableController
        subjectsTable.delegate = subjectsTableController
    }
}

class SubjectsTableController: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    @objc func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    @objc func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    @objc func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
}