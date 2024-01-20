//
//  OnboardingScreen.swift
//  
//  Created by Manajit Halder on 19/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct OnboardingScreen: View {
//    @State private var selectedView = 1
//    let maxNumberOfScreens = 3
    @AppStorage(Constants.currentOnboardingVersion) private var hasSeenOnboarding = false
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("screenBackground")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            VStack() {
                TabView {
                    OnboardingPageView(
                        imageName: "figure.run.square.stack",
                        title: "Welcome",
                        description: "You are welcome to the learning center of Swift programming related topics. Here you are going to learn Swift, SwiftUI and iOS App development topics. Have Fun!")
                    
                    OnboardingPageView(
                        imageName: "figure.run.circle",
                        title: "Welcome",
                        description: "You are welcome to the learning center of Swift programming related topics. Here you are going to learn Swift, SwiftUI and iOS App development topics. Have Fun!")
                    
                    OnboardingPageView(
                        imageName: "figure.outdoor.cycle",
                        title: "Welcome",
                        description: "You are welcome to the learning center of Swift programming related topics. Here you are going to learn Swift, SwiftUI and iOS App development topics. Have Fun!")
                }
                .tabViewStyle(.page(indexDisplayMode: .automatic))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
                Button {
                    // Remove the previous onboarding version
                    Constants.removeOldOnboardingVersions()
                    
//                    if selectedView == maxNumberOfScreens {
                    hasSeenOnboarding.toggle()
//                    } else {
//                        selectedView += 1
//                    }
                } label: {
//                    if selectedView == maxNumberOfScreens {
                        Text("Let's get started")
                            .fontWeight(.bold)
//                    }
                }
                .buttonStyle(.borderedProminent)
                .padding(.vertical)
            }
            .padding(.bottom, 40)
        )
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
