//
//  LeaderboardRowView.swift
//  
//  Created by Manajit Halder on 28/03/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

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
        .font(.title3)
        .foregroundColor(.white)
        .padding([.leading, .trailing], 20)
        .frame(height: 50)
    }
}

#Preview {
    LeaderboardRowView(rank: 1, profilePhoto: "", name: "", score: 1)
}
