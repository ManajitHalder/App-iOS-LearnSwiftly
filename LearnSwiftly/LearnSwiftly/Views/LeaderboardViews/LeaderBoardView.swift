//
//  LeadgerBoardView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct LeaderboardPodiumView: View {
    let rank: Int
    let profilePhoto: String
    let name: String
    let score: Int
    
    var body: some View {
        ZStack {
            Rectangle()
            
            HStack {
                Image(systemName: profilePhoto)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 70)
                    .padding(.trailing, 10)
                    .foregroundColor(Color.red)
                
                Text("\(name)")
                    .font(.title)
                
                Spacer()
                
                VStack {
                    Text("Rank: \(rank)")
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 20)
                    
                    Text("Score: \(score)")
                }
            }
            .padding()
            .cornerRadius(5)
            .foregroundColor(Color.white)
        }
        .frame(height: 120)
        .foregroundColor(Color.orange)
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
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.red)
               
                LeaderboardPodiumView(rank: 1, profilePhoto: "heart", name: "Reyansh", score: 1021)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.red)
                
                ScrollView {
                    VStack {
                        ForEach((1...20), id: \.self) { _ in 
                            LeaderboardRowView(rank: 1, profilePhoto: "heart", name: "Reyansh Halder", score: 1021)
                            LeaderboardRowView(rank: 2, profilePhoto: "heart.fill", name: "Manajit Halder", score: 902)
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
