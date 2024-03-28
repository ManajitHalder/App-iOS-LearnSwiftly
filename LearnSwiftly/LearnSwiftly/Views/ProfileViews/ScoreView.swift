//
//  ScoreView.swift
//  
//  Created by Manajit Halder on 28/03/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ScoreView: View {
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible(minimum: 100)),
            GridItem(.flexible(minimum: 100))
        ], spacing: 8) {
            ZStack {
                Rectangle()
                
                HStack {
                    Image(systemName: "light.panel.fill")
                    Text("Score")
                        .fontWeight(.bold)
                }
                .foregroundColor(.yellow)
            }
            .frame(height: 120)
            
            ZStack {
                Rectangle()
                
                HStack {
                    Image(systemName: "wineglass.fill")
                    Text("Cups")
                        .fontWeight(.bold)
                }
                .foregroundColor(.yellow)
            }
            .frame(height: 120)
            
            ZStack {
                Rectangle()
                
                HStack {
                    Image(systemName: "medal.fill")
                    Text("Medals")
                        .fontWeight(.bold)
                }
                .foregroundColor(.yellow)
            }
            .frame(height: 120)
            
            ZStack {
                Rectangle()
                
                HStack {
                    Image(systemName: "trophy.fill")
                    Text("Trophies")
                        .fontWeight(.bold)
                }
                .foregroundColor(.yellow)
            }
            .frame(height: 120)
        }
        .foregroundColor(.gray)
        .cornerRadius(10)
    }
}

#Preview {
    ScoreView()
}
