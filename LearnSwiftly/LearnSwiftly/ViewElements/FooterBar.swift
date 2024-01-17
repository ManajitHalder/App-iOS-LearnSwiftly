//
//  FooterBar.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct FooterBar: View {
    @State private var isHomePageActive = true
    @State private var isChapterViewActive = false
    @State private var isLeaderBoardViewActive = false
    @State private var isProfileViewActive = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 90)
                .foregroundColor(Color("footer"))
            
            HStack(spacing: 20) {
                
                NavigationLink(destination: HomePage()) {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                }
                
                NavigationLink(destination: ChapterView()) {
                    VStack {
                        Image(systemName: "book")
                        Text("Chapter")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                }
                
                NavigationLink(destination: LeaderBoardView()) {
                    VStack {
                        Image(systemName: "trophy")
                        Text("Leaderboard")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                }
                
                NavigationLink(destination: ProfileView()) {
                    VStack {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                }
            }
            .padding([.leading, .trailing], 10)
        }
    }
}

struct FooterBar_Previews: PreviewProvider {
    static var previews: some View {
        FooterBar()
    }
}
