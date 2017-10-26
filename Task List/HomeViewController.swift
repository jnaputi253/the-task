//
//  ViewController.swift
//  Task List
//
//  Created by Juan Naputi on 10/23/17.
//  Copyright © 2017 Juan Naputi. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {
    @IBOutlet weak var taskTable: UITableView!
    
    var tasks = [NSManagedObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTable.delegate = self
        taskTable.dataSource = self
    }
}

