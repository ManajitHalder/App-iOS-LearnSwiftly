//
//  ContentView.swift
//  
//  Created by Manajit Halder on 16/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct LearnView: View {
    @ObservedObject private var courseListViewModel = CourseListViewModel()
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("screenBackground")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            VStack {
                LearnViewHeaderBar()
                
                HStack {
                    Text("Courses Enrolled")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
//                    NavigationLink(destination: CourseView()) {
//                        Text("All Courses")
//                            .font(.title3)
//                            .foregroundColor(.black)
//                            .padding(8)
//                            .background(Color("headerbar"))
//                            .cornerRadius(10)

//                    }
                }

                .foregroundColor(.white)
                .padding()
                
                ScrollView {
                    VStack {
                        ForEach(courseListViewModel.courses) { course in
                            if course.isEnrolled() {
                                NavigationLink(destination: ChapterListView(chapters: course.chapters)) {
                                    CourseView(
                                        logo: course.logo,
                                        title: course.title,
                                        description: course.description,
                                        statusColor: course.statusColor,
                                        onUnenrollButtonTap: {
                                            courseListViewModel.updateCourseStatus(course: course, status: .notEnrolled)
                                        }
                                    )
                                }
                            }
                        }
                    }
                    .padding(.bottom, 100)
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
