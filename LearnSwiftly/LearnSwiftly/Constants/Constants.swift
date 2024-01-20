//
//  Constants.swift
//  
//  Created by Manajit Halder on 19/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

class Constants {
//    static let currentOnboardingVersion = "onboardingversion_1.0.0"
//    static let currentOnboardingVersion = "onboardingversion_1.0.1"
//    static let currentOnboardingVersion = "onboardingversion_1.0.2"
    static let currentOnboardingVersion = "onboardingversion_1.0.3"
    
    // Add the old onboarding version to this function whenever a new version is created.
    static func removeOldOnboardingVersions() {
        UserDefaults.standard.removeObject(forKey: "onboardingversion_1.0.0")
        UserDefaults.standard.removeObject(forKey: "onboardingversion_1.0.1")
        UserDefaults.standard.removeObject(forKey: "onboardingversion_1.0.2")
    }
}


