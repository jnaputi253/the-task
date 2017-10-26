//
//  HomeViewControllerExtensions.swift
//  Task List
//
//  Created by Juan Naputi on 10/23/17.
//  Copyright © 2017 Juan Naputi. All rights reserved.
//

import UIKit

extension HomeViewController : UITableViewDelegate {
    
    
}

extension HomeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.taskTable.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        cell.textLabel?.text = "Test Title Here"
        cell.textLabel?.textAlignment = .center
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
}
