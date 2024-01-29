//
//  CoursesListView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct CoursesListView: View {
    @StateObject private var courseViewModel = CourseViewModel()
    
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
                        ForEach(courseViewModel.courses) { course in
                            if course.isEnrolled() {
                                
                            }
                            CourseView(
                                logo: course.logo,
                                title: course.title,
                                description: course.description,
                                statusColor: course.statusColor
                            )
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
