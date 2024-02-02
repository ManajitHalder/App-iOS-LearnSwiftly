//
//  QuizView.swift
//  
//  Created by Manajit Halder on 01/02/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct QuizView: View {
    let quiz: Quiz
    @State private var currentIndex: Int = 0
//    @State private var userAnswer: String = ""
//    @State private var isQuizSubmitted: Bool = false
    
    var body: some View {
        VStack {
            if currentIndex < quiz.options.count {
                Text(quiz.question)
                
                ForEach(quiz.options.indices, id: \.self) { index in
                    if index < quiz.options.count - 1 {
//                        currentIndex = index + 1
                        NavigationLink(destination: OptionView(item: quiz.options[index], nextIndex: currentIndex), label: {
                            Text(quiz.options[index])
                        })
                    }
                }
                
            } else {
                Text("End of Quiz")
                    .padding()
            }
        }
        .padding()
        
    }
    
}

 
struct OptionView: View {
    let item: String
    var nextIndex: Int
    @State private var userAnswer = ""

    var body: some View {
        VStack {
            Text(item)
            TextField("Your Answer", text: $userAnswer)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Submit") {
                // Handle the user's answer, and navigate to the next item
                // For simplicity, let's just print the answer and update the index
                print("User Answer: \(userAnswer)")
                // You can implement your logic here based on the answer
                // For now, just move to the next item
//                nextIndex += 1
            }
            .padding()
        }
        .padding()
    }
}
                                   
                                   
                                   
                                   
                                   
                                   
                                   
struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(quiz: Quiz(isCorrect: false))
    }
}
