//
//  UpgradeToProView.swift
//  
//  Created by Manajit Halder on 19/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct UpgradeToProSheetView: View {
    @Binding var isUpgradeToProViewEnabled: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isUpgradeToProViewEnabled.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .padding()
            }            
            Spacer()
            
            PricingView(isUpgradeToProViewEnabled: $isUpgradeToProViewEnabled)
                .foregroundColor(.white)
                .padding()
            
            Spacer()
            
        }
        .presentationDetents([.fraction(0.95)])
        .presentationDragIndicator(.hidden)
        .presentationCornerRadius(20.0)
        .presentationBackground(Color("screenBackground"))
    }
}

struct UpgradeToProSheetView_Previews: PreviewProvider {
    static var previews: some View {
        UpgradeToProSheetView(isUpgradeToProViewEnabled: .constant(false))
    }
}
