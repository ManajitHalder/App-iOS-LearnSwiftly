//
//  FooterBar.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct FooterBar: View {
//    @State private var isHomePageActive = false
//    
//    @State private var isChapterViewActive = false
//    @State private var isLeaderBoardViewActive = false
//    @State private var isProfileViewActive = false
    
    var body: some View {
        Rectangle()
            .frame(height: 90)
            .foregroundColor(Color("footerBar"))
            .opacity(0.8)
    }
}

struct FooterBar_Previews: PreviewProvider {
    static var previews: some View {
        FooterBar()
    }
}
