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
        var result = self.rawValue
        if let range = result.range(of: #"(?<!^)(?=[A-Z])"#, options: .regularExpression) {
            result.replaceSubrange(range, with: " ")
        }
        return result.capitalized
    }
}

struct Course: Identifiable {
    var id: UUID
    var title: String
    var logo: String
    var description: String
    var status: CourseStatus
    var content: [[Chapter: Content]]
    
    init(id: UUID = UUID(), title: String, logo: String, description: String, status: CourseStatus, content: [[Chapter : Content]]) {
        self.id = id
        self.title = title
        self.logo = logo
        self.description = description
        self.status = status
        self.content = []
    }
}

extension Course {
    
    static let course1 = Course(
            title: "Swift Programming Basics",
            logo: "person.text.rectangle",
            description: "Learn programming in Swift for developing apps for iOS, iPadOS, MacOS and other Apple platforms.",
            status: CourseStatus.notEnrolled,
            content: [[Chapter.chapter11 : Content.content11],
                      [Chapter.chapter12 : Content.content12],
                      [Chapter.chapter13 : Content.content13],
                      [Chapter.chapter21 : Content.content21],
                      [Chapter.chapter22 : Content.content22],
                      [Chapter.chapter23 : Content.content23]
                     ]
    )
    
    static let course2 = Course(
            title: "JavaScript Programming Basics",
            logo: "person.text.rectangle",
            description: "Learn programming in JavaScript for developing apps for Web Developemnt for MacOS and Windows platforms.",
            status: CourseStatus.notEnrolled,
            content: [[Chapter.chapter11 : Content.content11],
                      [Chapter.chapter12 : Content.content12],
                      [Chapter.chapter13 : Content.content13],
                      [Chapter.chapter21 : Content.content21],
                      [Chapter.chapter22 : Content.content22],
                      [Chapter.chapter23 : Content.content23]
                     ]
    )
    
    static let course3 = Course(
            title: "HTML and CSS Programming Basics",
            logo: "person.text.rectangle",
            description: "Learn programming in HTML and CSS for developing apps for Web Developemnt for MacOS and Windows platforms.",
            status: CourseStatus.notEnrolled,
            content: [[Chapter.chapter11 : Content.content11],
                      [Chapter.chapter12 : Content.content12],
                      [Chapter.chapter13 : Content.content13],
                      [Chapter.chapter21 : Content.content21],
                      [Chapter.chapter22 : Content.content22],
                      [Chapter.chapter23 : Content.content23]
                     ]
    )
    
    static let sampleData: [Course] = [course1, course2, course3]
}
