//
//  ContentView.swift
//  
//  Created by Manajit Halder on 16/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct HomeView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("screenBackground")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            VStack {
                HeaderBarHome()
                
                HStack {
                    Text("My Courses")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    NavigationLink(destination: CourseView()) {
                        Text("View All")
                    }
                    
                }
                .foregroundColor(.white)
                .padding()
                
                Text("Welcome to Your App. Select the course you want to learn. ")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                    NavigationLink(destination: EnrolledView()) {
                        Text("Next")
                    }
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
