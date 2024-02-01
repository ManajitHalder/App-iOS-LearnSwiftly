//
//  TitleView.swift
//  
//  Created by Manajit Halder on 01/02/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct TitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.custom("Cochin", size: 25))
            .fontWeight(.bold)
            .fontDesign(.rounded)
            .foregroundColor(.black)
            .padding(.bottom, 20)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Title")
    }
}
