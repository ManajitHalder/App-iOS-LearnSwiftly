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
            VStack(spacing: 0) {
                LeaderboardHeaderBar()
                
//                Rectangle()
//                    .frame(height: 1)
//                    .foregroundColor(Color.red)
//                    .padding(.top, 10)
               
                LeaderboardPodiumView(rank: 1, profilePhoto: "heart", name: "Reyansh", score: 1021)
                
//                Rectangle()
//                    .frame(height: 1)
//                    .foregroundColor(Color.red)
                
                ScrollView {
                    VStack {
                        ForEach((1...20), id: \.self) { _ in 
                            LeaderboardRowView(rank: 1, profilePhoto: "heart", name: "Reyansh Halder", score: 1021)
                            LeaderboardRowView(rank: 2, profilePhoto: "heart.fill", name: "Manajit Halder", score: 902)
                        }
                    }
                    .background(Color.gray)
                    .cornerRadius(5)
                    .padding(.top, 10)
                    .padding([.leading, .trailing], 10)
                }
                
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
