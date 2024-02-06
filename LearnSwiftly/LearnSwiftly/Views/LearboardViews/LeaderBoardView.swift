//
//  LeadgerBoardView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct LeaderBoardView: View {
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
                
                Spacer()
                
                Text("Welcome to Leader Board View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Spacer()
                
                //FooterBar()
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
