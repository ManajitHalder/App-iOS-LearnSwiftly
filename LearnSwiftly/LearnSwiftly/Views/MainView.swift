//
//  TabView.swift
//  
//  Created by Manajit Halder on 18/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct MainView: View {
    
    var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                EnrolledView()
                    .tabItem {
                        Label("Enrolled", systemImage: "book")
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
            .accentColor(Color.cyan)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
