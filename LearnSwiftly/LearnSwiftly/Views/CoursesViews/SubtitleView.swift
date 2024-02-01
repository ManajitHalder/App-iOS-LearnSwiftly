//
//  SubtitleView.swift
//  
//  Created by Manajit Halder on 01/02/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct SubtitleView: View {
    let subtitle: String
    
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: "heart.fill")
                .foregroundColor(.pink)
            
            Text(subtitle)
                .font(.custom("Cochin", size: 20))
                .fontWeight(.semibold)
                .fontDesign(.rounded)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding(.bottom, 10)
    }
}

struct SubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        SubtitleView(subtitle: "Subtitle")
    }
}
