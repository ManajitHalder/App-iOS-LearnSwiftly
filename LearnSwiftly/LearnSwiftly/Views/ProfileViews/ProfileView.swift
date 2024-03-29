//
//  ProfileView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

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
                ProfileViewHeaderBar()
                
                ScrollView {
                    VStack {
                        ProfilePhotoView(photo: "", name: "")
                        
                        ScoreView()
                                                
                        // Premium Course View
                        PremiumCourseView()
                        
                        // Invite a friend
                        InviteFriendView()
                        
                        Spacer()
                    }
                    .padding()
                    .padding(.bottom, 100)
                }
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
