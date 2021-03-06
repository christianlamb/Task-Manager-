//
//  Task.swift
//  Task manager
//
//  Created by Christian Lamb on 9/17/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation
//This creates a task class that stores all the properties of the task.
class Task {
    var complete: Bool = false
    let detials: String
    let title: String
    var completeDate: Date?
    var importance: Int
    init(detials: String, title: String, importance: Int) {
        
        self.detials = detials
        self.title = title
        self.importance = importance
    }
    
}
