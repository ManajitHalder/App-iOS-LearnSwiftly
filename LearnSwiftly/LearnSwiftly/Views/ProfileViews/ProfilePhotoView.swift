//
//  ProfilePhotoView.swift
//  
//  Created by Manajit Halder on 28/03/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ProfilePhotoView: View {
    let photo: String
    let name: String
    
    var body: some View {
        ZStack {
            VStack {
                Image(uiImage: UIImage(contentsOfFile: "/Volumes/Mojave/Users/reyansh/Data/01 Reyansh/Photos/DSC_1400.JPG")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 180)
                    .cornerRadius(10.0)
                
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
        .cornerRadius(10)
    }
}

#Preview {
    ProfilePhotoView(photo: "", name: "")
}
