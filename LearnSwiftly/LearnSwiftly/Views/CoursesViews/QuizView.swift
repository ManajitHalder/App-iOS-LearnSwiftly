//
//  QuizView.swift
//  
//  Created by Manajit Halder on 01/02/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct QuizView: View {
    let quiz: Quiz
    
    var body: some View {
        VStack {
            Text(quiz.question)
            
            ForEach(quiz.options, id: \.self) { option in
                Text(option)
            }
            
            
        }
        .padding()
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(quiz: Quiz(isCorrect: false))
    }
}
