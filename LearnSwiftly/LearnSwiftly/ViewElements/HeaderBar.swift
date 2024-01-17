//
//  HeaderBar.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct HeaderBar: View {
    var body: some View {
        Rectangle()
            .frame(height: 150)
            .foregroundColor(Color("footer"))
    }
}

struct HeaderBar_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBar()
    }
}
