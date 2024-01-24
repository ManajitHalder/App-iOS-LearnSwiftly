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
    
    func name() -> String {
        switch self {
        case .notEnrolled:
            return "Not Enrolled"
        case .enrolled:
            return "Enrolled"
        case .inProgress:
            return "In Progress"
        case .completed:
            return "Completed"
        }
    }
}

struct Course: Identifiable {
    var id: UUID
    var title: String
    var logo: String
    var description: String
    var status: CourseStatus
    var chapters: [String]
    
    init(id: UUID = UUID(), title: String, logo: String, description: String, status: CourseStatus, chapters: [String]) {
        self.id = id
        self.title = title
        self.logo = logo
        self.description = description
        self.status = status
        self.chapters = []
    }
}
