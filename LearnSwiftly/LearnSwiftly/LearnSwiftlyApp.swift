//
//  LearnSwiftlyApp.swift
//  
//  Created by Manajit Halder on 16/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

@main
struct LearnSwiftlyApp: App {
    @AppStorage(Constants.currentOnboardingVersion) private var hasSeenOnboarding = false
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if hasSeenOnboarding {
                    MainView()
                } else {
                    OnboardingScreen()
                }
            }
        }
    }
}
