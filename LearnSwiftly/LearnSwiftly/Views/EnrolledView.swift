//
//  ChapterView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct EnrolledView: View {
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
                
                Text("Welcome to Enrolled View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Spacer()

                FooterBar()
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct EnrolledView_Previews: PreviewProvider {
    static var previews: some View {
        EnrolledView()
    }
}
