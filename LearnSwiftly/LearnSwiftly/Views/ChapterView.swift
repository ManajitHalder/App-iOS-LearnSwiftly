//
//  ChapterView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ChapterView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [.gray, .yellow, .yellow, .gray]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
        .overlay(
            VStack {
                Text("Welcome to Chapter View")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                NavigationLink(destination: LeaderBoardView()) {
                    Text("Leadger Board")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                }
                
                Spacer()
                
                FooterBar()
            }
        )
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView()
    }
}
