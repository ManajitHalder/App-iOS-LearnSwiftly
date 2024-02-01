//
//  TextView.swift
//  
//  Created by Manajit Halder on 01/02/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct TextView: View {
    let text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.body)
                .background(.white)
                .foregroundColor(.black)
                .padding(.bottom, 10)
                .padding(.leading, 10)
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "If you want to display a clipboard confirmation or any kind of toast message when the code is copied, you can make use of third-party libraries or create a custom view. Unfortunately, SwiftUI doesn't provide a built-in toast-like component, so you may need to create your own or use external libraries.")
    }
}
