//
//  CoreDataManager.swift
//  Task List
//
//  Created by Juan Naputi on 10/23/17.
//  Copyright © 2017 Juan Naputi. All rights reserved.
//

import UIKit
import CoreData

class CoreDataManager: NSObject {
    private var tasks = [NSManagedObject]()
    
    func fetchAllTasks() -> [NSManagedObject] {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate  else {
            return tasks
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Task")
        
        do {
            try tasks = managedContext.fetch(fetchRequest)
        } catch {
            fatalError("Could not fetch tasks.  \(error)")
        }
        
        return tasks
    }
}
