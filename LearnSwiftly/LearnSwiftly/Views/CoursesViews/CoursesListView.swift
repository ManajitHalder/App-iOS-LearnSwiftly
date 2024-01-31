//
//  CoursesListView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct CoursesListView: View {
    @StateObject var courseListViewModel = CourseListViewModel()
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("screenBackground")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            VStack {
                HeaderBar()
                
                HStack {
                    Text("All Courses")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding()
                
                Spacer()
                
                ScrollView {
                    VStack {
                        ForEach(courseListViewModel.courses) { course in
                            NavigationLink(destination: ChapterListView(chapters: course.chapters)) {
                                CourseView(
                                    logo: course.logo,
                                    title: course.title,
                                    description: course.description,
                                    statusColor: course.statusColor,
                                    onEnrollButtonTap: {
                                        courseListViewModel.updateCourseStatus(course: course, status: .enrolled)
                                    }
//                                    onUnenrollButtonTap: {
//                                        courseListViewModel.updateCourseStatus(course: course, status: .notEnrolled)
//                                    }
//                                    onLikeCourseOnTap: {
//                                        courseListViewModel.likeCourse(course: Course, like: likeCount)
//                                    }
                                )

                            }
                            .navigationTitle("Title")
                        }
                    }
                    .padding(.bottom, 100)
                }
               // FooterBar()
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct CoursesListView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesListView()
    }
}
