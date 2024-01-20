//
//  ContentView.swift
//  
//  Created by Manajit Halder on 16/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct LearnView: View {
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
                    Text("My Courses")
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
                        CourseView(
                            logo: "person.text.rectangle",
                            title: "Swift Programming Basics",
                            description: "Learn programming in Swift for developing apps for iOS, iPadOS, MacOS and other Apple platforms.")
                        
                        CourseView(
                            logo: "person.text.rectangle",
                            title: "Swift Programming Basics",
                            description: "Learn programming in Swift for developing apps for iOS, iPadOS, MacOS and other Apple platforms.")
                        
                        CourseView(
                            logo: "person.text.rectangle",
                            title: "Swift Programming Basics",
                            description: "Learn programming in Swift for developing apps for iOS, iPadOS, MacOS and other Apple platforms.")
                        
                        CourseView(
                            logo: "person.text.rectangle",
                            title: "Swift Programming Basics",
                            description: "Learn programming in Swift for developing apps for iOS, iPadOS, MacOS and other Apple platforms.")
                    }
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
