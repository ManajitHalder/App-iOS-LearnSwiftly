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
                    Rectangle()
                        .frame(width: 190)
                        .foregroundColor(.red)
                    
                    Rectangle()
                        .frame(width: 170)
                         .foregroundColor(.white)
                                        
//                    Image(systemName: "heart.fill")
                    Image(uiImage: UIImage(contentsOfFile: "/Volumes/Mojave/Users/reyansh/Data/01 Reyansh/Photos/DSC_1400.JPG")!)
                        .resizable()
                        .scaledToFill()
//                        .frame(width: 120)
//                        .foregroundColor(.green)
                }
                
                Text("Reyansh Halder")
                    .foregroundColor(.white)
                    .font(.custom("Cochin", size: 35))
                    .fontWeight(.bold)
            }
            .frame(height: 270)
            .frame(maxWidth: 900)
        }
        .padding()
        .background(.gray)
    }
}

struct ScoreView: View {
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible(minimum: 100)),
            GridItem(.flexible(minimum: 100))
        ], spacing: 8) {
            Rectangle()
                .frame(height: 120)
            Rectangle()
                .frame(height: 120)
            Rectangle()
                .frame(height: 120)
            Rectangle()
                .frame(height: 120)
        }
        .foregroundColor(.gray)
        .cornerRadius(10)
    }
}

struct CertificateView: View {
    var body: some View {
        Text("Certificate View")
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
                
                VStack {
                    //HeaderBar()

                    ProfilePhotoView(photo: "", name: "")
                        .padding(.top, 60)
                    
                    ScoreView()
                    
                    CertificateView()
                }
                .padding()
                

                
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
