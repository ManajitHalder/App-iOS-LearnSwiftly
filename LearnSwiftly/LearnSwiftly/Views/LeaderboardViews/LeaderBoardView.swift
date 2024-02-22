//
//  LeadgerBoardView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct LeaderboardPodiumView: View {
    var body: some View {
        ZStack {
            Rectangle()
            
            HStack {
                Text("First")
                Text("Second")
                Text("Third")
            }
            .padding()
        }
        .frame(height: 120)
        .foregroundColor(Color.blue)
    }
}

struct LeaderboardRowView: View {
    let rank: Int
    let profilePhoto: String
    let name: String
    let score: Int
    
    var body: some View {
        HStack {
            Text("\(rank)")
                .padding(.trailing, 20)
            
            Image(systemName: profilePhoto)
                .padding(.trailing, 20)
                .foregroundColor(Color.red)
            
            Text("\(name)")
            
            Spacer()
            Text("\(score)")
//                .padding(.trailing, 20)
        }
        .foregroundColor(.white)
        .padding([.leading, .trailing], 20)
        .frame(height: 50)
    }
}

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
                Divider()
               
                LeaderboardPodiumView()
                Divider()
                
                ScrollView {
                    VStack {
                        ForEach((1...20), id: \.self) { _ in 
                            LeaderboardRowView(rank: 1, profilePhoto: "heart", name: "Reyansh", score: 1021)
                            LeaderboardRowView(rank: 2, profilePhoto: "heart.fill", name: "Annappa", score: 902)
                        }
                    }
                    .padding(.top, 10)
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
