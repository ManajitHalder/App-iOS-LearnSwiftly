//
//  CourseViewModel.swift
//  
//  Created by Manajit Halder on 24/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

final class AllCourses {
    func fetchAllCourses() async -> [Course] {
        return Course.sampleData
    }
}

class CourseViewModel: ObservableObject {
    @Published var courses: [Course] = []
    
    let course = AllCourses()
    
    func loadCourses() async throws {
        courses = await course.fetchAllCourses()
    }
    
    init() {
        Task {
            try await self.loadCourses()
        }
    }
}
