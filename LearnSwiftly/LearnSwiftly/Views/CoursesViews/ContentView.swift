//
//  ContentView.swift
//  
//  Created by Manajit Halder on 31/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ContentView: View {
    let contents: [Content]
    @Environment(\.presentationMode) var presentationMode
    
//    @State var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(showsIndicators: false) {
                ForEach(contents) { content in
                    TitleView(title: content.title)
                    
                    ForEach(content.elements) { element in
                        switch element.type {
                        case .subtitle(let subtitle):
                            SubtitleView(subtitle: subtitle)
                                .multilineTextAlignment(.leading)

                        case .text(let text):
                            TextView(text: text)
                            
                        case .code(let code):
                            CodeView(languageName: "swift", code: code)
                            
                        case .image(let image):
                            Text(image)
                        }
                    }
                    
//                    ForEach(content.quiz) { quiz in
//                        QuizView(quiz: quiz)
//                    }
                    QuizView(quiz: Quiz.quiz1)
                }
            }
            .padding([.leading, .trailing], 20)
            
    //        List(contents) { content in
    //            TitleView(title: content.title)
    //
    //            ForEach(content.elements) { element in
    //                switch element.type {
    //                case .subtitle(let subtitle):
    //                    SubtitleView(subtitle: subtitle)
    //
    //                case .text(let text):
    //                    TextView(text: text)
    //
    //                case .code(let code):
    //                    CodeView(languageName: "swift", code: code)
    //
    //                case .image(let image):
    //                    Text(image)
    //                }
    //            }
    //
    ////            ForEach(content.quiz) { quiz in
    ////                if quiz.showQuiz == true {
    ////
    ////                }
    ////            }
    //        }
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
