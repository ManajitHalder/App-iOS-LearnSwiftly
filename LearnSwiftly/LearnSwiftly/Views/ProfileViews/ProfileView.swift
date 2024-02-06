//
//  ProfileView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ProfilePhotoView: View {
    let photo: String
    let name: String
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Circle()
                        .frame(width: 190)
                        .foregroundColor(.red)
                    
                    Circle()
                        .frame(width: 170)
                         .foregroundColor(.white)
                                        
                    Image(systemName: "heart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120)
                        .foregroundColor(.green)
                }
                
                Text("Reyansh Halder")
                    .foregroundColor(.white)
                    .font(.custom("Cochin", size: 35))
                    .fontWeight(.bold)
            }
        }
        .frame(width: 350, height: 270)
        .cornerRadius(20)
        .padding()
        .background(.gray)
    }
}

struct ScoreView: View {
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible(minimum: 100)),
            GridItem(.flexible(minimum: 100))
        ], spacing: 20) {
            Rectangle()
                .frame(height: 120)
            Rectangle().frame(height: 120)
            Rectangle().frame(height: 120)
            Rectangle().frame(height: 120)
        }
        .foregroundColor(.gray)
        .cornerRadius(10)
        .padding(20)
    }
}

struct ProfileView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("screenBackground")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            VStack {
//                HeaderBar()
//                Spacer()
                
                VStack {
//                    Text("Welcome to Profile View")
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
                    
                    ProfilePhotoView(photo: "", name: "")
                    
                    ScoreView()
                    
                }
                .padding(.top, 60)

                
                Spacer()

               // FooterBar()
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
