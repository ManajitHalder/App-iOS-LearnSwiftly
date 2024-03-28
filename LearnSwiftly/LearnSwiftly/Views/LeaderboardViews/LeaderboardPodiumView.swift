//
//  LeaderboardPodiumView.swift
//  
//  Created by Manajit Halder on 28/03/24 using Swift 5.0 on MacOS 13.6
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
//                    .foregroundColor(Color.red)
                
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
        .foregroundColor(Color("screenBackground"))
    }
}

#Preview {
    LeaderboardPodiumView(rank: 1, profilePhoto: "", name: "", score: 1)
}
