//
//  TabView.swift
//  
//  Created by Manajit Halder on 18/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView {
            Group {
                LearnView()
                    .tabItem {
                        Label("Learn", systemImage: "book.fill")
                    }
                
                CoursesListView()
                    .tabItem {
                        Label("Courses", systemImage: "list.bullet.clipboard.fill")
                    }
                
                LeaderBoardView()
                    .tabItem {
                        Label("Leaderboard", systemImage: "trophy")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
            }
            .toolbarColorScheme(.light, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
