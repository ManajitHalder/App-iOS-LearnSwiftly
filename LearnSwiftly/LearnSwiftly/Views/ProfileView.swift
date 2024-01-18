//
//  ProfileView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ProfileView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("footer")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            VStack {
                HeaderBar()
                Spacer()
                
                Text("Welcome to Profile View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Spacer()

                FooterBar()
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
