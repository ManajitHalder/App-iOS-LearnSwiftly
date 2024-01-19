//
//  OnboardingPageView.swift
//  
//  Created by Manajit Halder on 19/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct OnboardingPageView: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.cyan)
                .padding(.bottom, 20)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.indigo)
                .padding(.bottom, 20)
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
        }
        .frame(height: 400)
        .padding()
        .border(.black, width: 3)
        .padding(.all)
    }
}

struct OnboardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageView(imageName: "", title: "", description: "")
    }
}
