//
//  PremiumPaymentSheetView.swift
//  
//  Created by Manajit Halder on 20/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct PremiumPaymentSheetView: View {
    @Binding var isPremiumCourseSelected: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isPremiumCourseSelected.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .padding()
            }
            Spacer()
            
            Text("Premium Payment:")
            
            Spacer()
        }
        .presentationDetents([.fraction(0.95)])
        .presentationDragIndicator(.hidden)
        .presentationCornerRadius(20.0)
        .presentationBackground(Color.gray)
    }
}

struct PremiumPaymentSheetView_Previews: PreviewProvider {
    static var previews: some View {
        PremiumPaymentSheetView(isPremiumCourseSelected: .constant(false))
    }
}
