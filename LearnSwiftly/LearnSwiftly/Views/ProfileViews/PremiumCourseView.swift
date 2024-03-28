//
//  PremiumCourseView.swift
//  
//  Created by Manajit Halder on 28/03/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct PremiumCourseView: View {
    @State private var isPremiumCourseSelected: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
            
            VStack {
                VStack {
                    Text("Unlock Premium Courses")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    
                    Text("Unlock unlimited benefits with premium courses")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                HStack {
                    Button {
                        isPremiumCourseSelected.toggle()
                    } label: {
                        Text("Upgrade to Premium")
                            .fontWeight(.bold)
                    }
                    .buttonBorderShape(.automatic)
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                    
                    .sheet(isPresented: $isPremiumCourseSelected) {
                        PremiumPaymentSheetView(isPremiumCourseSelected: $isPremiumCourseSelected)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
        }
        .frame(height: 200)
        .foregroundColor(.purple)
        .cornerRadius(10)
    }
}

#Preview {
    PremiumCourseView()
}
