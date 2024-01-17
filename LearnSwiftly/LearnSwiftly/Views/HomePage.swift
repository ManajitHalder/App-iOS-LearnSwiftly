//
//  ContentView.swift
//  
//  Created by Manajit Halder on 16/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct HomePage: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [.white, .gray, .gray, .gray, .white]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            VStack {
                HeaderBar()
                
                Spacer()
                
                Text("Welcome to Your App")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                    NavigationLink(destination: ChapterView()) {
                        Text("Next")
                    }
                
                Spacer()
                
                FooterBar()
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
