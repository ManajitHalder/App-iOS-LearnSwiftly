//
//  Course.swift
//  
//  Created by Manajit Halder on 21/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

struct CourseStatus: Identifiable {
    let id: UUID
    var enrolled: Bool
    var inprogress: Bool
    var completed: Bool
    
    init(id: UUID = UUID(), enrolled: Bool = false, inprogress: Bool = false, completed: Bool = false) {
        self.id = id
        self.enrolled = enrolled
        self.inprogress = inprogress
        self.completed = completed
    }
}

struct Course: Identifiable {
    var id: UUID
    var title: String
    var logo: String
    var description: String
    var status: CourseStatus
    var chapters: [Chapters]
}
