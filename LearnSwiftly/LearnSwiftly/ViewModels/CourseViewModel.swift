//
//  CourseViewModel.swift
//  
//  Created by Manajit Halder on 24/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

class AllCourses {
    func fetchAllCourses() async -> [Course] {
        return Course.sampleData
    }
}

class CourseViewModel: ObservableObject {
    @Published var courses: [AllCourses] = []
}
