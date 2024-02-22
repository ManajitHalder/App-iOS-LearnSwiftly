//
//  LeaderboardHeaderBar.swift
//
//  Created by Manajit Halder on 21/02/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct LeaderboardHeaderBar: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 120)
                .foregroundColor(Color("headerbar"))
            
            HStack {
                Text("Leaderboard")
                    .font(.title2)
                    .foregroundStyle(.black)
                
                Spacer()
            }
            .padding(.top, 50)
            .padding(.leading, 20)
        }
    }
}

#Preview {
    LeaderboardHeaderBar()
}
