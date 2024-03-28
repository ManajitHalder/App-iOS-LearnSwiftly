//
//  ContentView.swift
//  
//  Created by Manajit Halder on 31/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ContentView: View {
    let contents: [Content]
    @Environment(\.presentationMode) var presentationMode
        
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(showsIndicators: false) {
                ForEach(contents) { chapterContent in
                    TitleView(title: chapterContent.title)
                    
                    ForEach(chapterContent.elements) { element in
                        switch element.type {
                        case .subtitle:
                            SubtitleView(subtitle: element.data)
                                .multilineTextAlignment(.leading)

                        case .text:
                            TextView(text: element.data)
                            
                        case .code:
                            CodeView(languageName: "swift", code: element.data)
                            
                        case .image:
                            Text(element.data)
                        }
                    }
                    
                    ForEach(chapterContent  .quiz) { quiz in
                        QuizView(quiz: quiz)
                    }
                }
            }
            .padding([.leading, .trailing], 20)
            .navigationBarItems(
                leading:
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .padding(.leading, 10)
            )
            .navigationBarBackButtonHidden()
            .navigationTitle("Heading")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contents: [])
    }
}
