//
//  ContentView.swift
//  
//  Created by Manajit Halder on 31/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ContentView: View {
    let contents: [Content]
    
    var body: some View {
        List(contents) { content in
            Text("\(content.numberOfQuiz)")
                .foregroundColor(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contents: [])
    }
}
