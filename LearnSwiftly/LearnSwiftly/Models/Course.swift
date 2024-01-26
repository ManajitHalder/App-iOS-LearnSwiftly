//
//  Course.swift
//  
//  Created by Manajit Halder on 21/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

enum CourseStatus: String, CaseIterable {
    case notEnrolled
    case enrolled
    case inProgress
    case completed
    
    var name: String {
        self.rawValue.capitalized
    }
}

struct Course: Identifiable {
    var id: UUID
    var title: String
    var logo: String
    var description: String
    var status: CourseStatus
    var content: [[Chapter: Content]]
    
    init(id: UUID, title: String, logo: String, description: String, status: CourseStatus, numberOfChapters: [Int], content: [[Chapter : Content]]) {
        self.id = id
        self.title = title
        self.logo = logo
        self.description = description
        self.status = status
        self.content = []
    }
}
