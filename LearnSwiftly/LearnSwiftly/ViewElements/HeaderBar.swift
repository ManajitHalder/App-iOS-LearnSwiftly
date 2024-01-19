//
//  HeaderBar.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct HeaderBar: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 120)
                .foregroundColor(Color("headerbar"))
            
//            HStack {
//                Text("SwiftLearn")
//                    .font(.custom("Cochin", size: 30))
//                    .fontWeight(.bold)
//                    .foregroundColor(.black)
//                
//                Spacer()
//                
//                ZStack {
//                    Capsule()
//                        .fill(.mint)
//                        .overlay(
//                            Text("Upgrade To Pro")
//                                .font(.custom("Cochin", size: 18))
//                        )
//                        .frame(width: 130, height: 40)
//                    
//                    Capsule()
//                        .stroke(Color.red, lineWidth: 3)
//                        .blur(radius: 4)
//                        .offset(x: 0, y: 2)
//                    
//                    Capsule()
//                        .stroke(Color.black, lineWidth: 2)
//                        .blur(radius: 4)
//                        .offset(x: -2, y: -2)
//                }
//                .frame(width: 130, height: 40)
//
//                Image(systemName: "ellipsis")
//                    .rotationEffect(.degrees(90))
//            }
//            .padding(20)
//            .padding([.top], 25)
        }
    }
}

struct HeaderBar_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBar()
    }
}
