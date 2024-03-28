//
//  CourseListViewModel.swift
//  
//  Created by Manajit Halder on 24/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation
import Combine

final class AllCourses {
    func fetchAllCourses() async throws -> [Course] {
        return Course.sampleData
    }
}

class CourseListViewModel: ObservableObject {
    @Published var courses: [Course] = []
//    @Published var chapters: [Chapter] = []
//    @Published var contents: [Content] = []
    
    //var cancellables: Set<AnyCancellable> = []
    
    var course = AllCourses()
    
//    func loadCourses() async throws {
//        do {
//            let fetchedCourses = try await course.fetchAllCourses()
//            
//            DispatchQueue.main.async {
//                self.courses = fetchedCourses
//                
//                // Subscribe to changes in statusColor for each course
    /*
                self.courses.forEach { course in
                    course.$statusColor
                        .receive(on: DispatchQueue.main) // Ensure updates occur on the main thread
                        .sink { [weak self] _ in
                            self?.objectWillChange.send()
                        }
                        .store(in: &self.cancellables)
                }
     */
//            }
//        } catch {
//            print("error in loadCourses method.")
//        }
//    }
    
    func loadCourses() async throws {
        Task {
            do {
                let courseList = try await HttpClient.shared.fetchData()
                
                DispatchQueue.main.async {
                    self.courses = courseList
                }
            } catch {
                print("Error in loading Courses")
            }
        }
    }
    
    init() {
        Task {
            try await self.loadCourses()
        }
    }
    
//    Using Course methods
    func updateCourseStatus(course: Course, status: CourseStatus) {
        let updatedCourse = course
        updatedCourse.updateStatus(status: status)
        
        // Assuming courses is an array of ObservableObject
        if let index = courses.firstIndex(where: {$0.id == updatedCourse.id }) {
            courses[index] = updatedCourse
        }
    }
}
