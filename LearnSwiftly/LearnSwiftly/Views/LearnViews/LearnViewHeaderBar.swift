//
//  HeaderBarHome.swift
//  
//  Created by Manajit Halder on 19/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct LearnViewHeaderBar: View {
    @State private var isUpgradeToProViewEnabled: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 120)
                .foregroundColor(Color("headerbar"))
            
            HStack {
                Text("SwiftLearn")
                    .font(.custom("Cochin", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                Button {
                    isUpgradeToProViewEnabled.toggle()
                } label: {
                    ZStack {
                        Capsule()
                            .fill(.black)
                            .overlay(
                                Text("Upgrade To Pro")
                                    .font(.custom("Cochin", size: 18))
                                    .foregroundColor(.white)
                            )
                            .frame(width: 135, height: 40)
                        
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                            .blur(radius: 2)
                            .offset(x: 0, y: 2)

                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                            .blur(radius: 2)
                            .offset(x: 0, y: 2)
                    }
                    .frame(width: 135, height: 40)
                }
                .sheet(isPresented: $isUpgradeToProViewEnabled) {
                    UpgradeToProSheetView(isUpgradeToProViewEnabled: $isUpgradeToProViewEnabled)
                }
                
//                Image(systemName: "ellipsis")
//                    .rotationEffect(.degrees(90))
            }
            .padding(20)
            .padding([.top], 25)
        }
    }
}

struct LearnViewHeaderBar_Previews: PreviewProvider {
    static var previews: some View {
        LearnViewHeaderBar()
    }
}
