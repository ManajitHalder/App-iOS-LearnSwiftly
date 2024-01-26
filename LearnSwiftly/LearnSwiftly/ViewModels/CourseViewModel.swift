//
//  CourseViewModel.swift
//  
//  Created by Manajit Halder on 24/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

class AllCourses {
    func fetchAllCourses() async -> [Course] {
        return [
//            Course(
//                title: "Swift Fundamentals",
//                logo: "beats.studiobuds",
//                description: "Fundamentals of Swift Programming Language",
//                status: .notEnrolled,
//                chapters: [
//                    "First program",
//                    "Basic of Swift",
//                    "Optionals",
//                    "Classes and Structure"
//                ]),
//            
//            Course(
//                title: "SwiftUI",
//                logo: "beats.studiobudsplus.chargingcase",
//                description: "Creating UI for iOS Apps",
//                status: .notEnrolled,
//                chapters: [
//                    "Draw a button",
//                    "View Builder",
//                    "Observable"
//                ]),
//            
//            Course(
//                title: "Algorithms in Swift",
//                logo: "studentdesk",
//                description: "Algorithms in Swift Programming Language",
//                status: .notEnrolled,
//                chapters: [
//                    "Linear Search",
//                    "Bubble Sort",
//                    "String reverse",
//                    "Dictionaries"
//                ])
        ]
    }
}

class CourseViewModel: ObservableObject {
    @Published var courses: [AllCourses] = []
}
