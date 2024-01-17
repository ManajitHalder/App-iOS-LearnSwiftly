//
//  LeadgerBoardView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct LeaderBoardView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("gradientAsh")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
        .overlay(
            VStack {
                Text("Welcome to Leadger Board View")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Spacer()
                
                FooterBar()
            }
        )
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
