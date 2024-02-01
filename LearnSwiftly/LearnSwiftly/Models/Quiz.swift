//
//  Quiz.swift
//  
//  Created by Manajit Halder on 26/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

struct Quiz: Identifiable {
    let id: UUID
    var showQuiz: Bool
    var question: String
    var options: [String]
    var answer: String
    var responseMessage: String
    var isCorrect: Bool?
    
    init(id: UUID = UUID(), showQuiz: Bool = false, question: String = "", options: [String] = [], answer: String = "", responseMessage: String = "", isCorrect: Bool?) {
        self.id = id
        self.showQuiz = false
        self.question = question
        self.options = options
        self.answer = answer
        self.responseMessage = responseMessage
        self.isCorrect = isCorrect
    }
}

extension Quiz {
    static let quiz1 = Quiz(showQuiz: true, question: "?", options: ["A", "B", "C"], answer: "answer", isCorrect: false)
    static let quiz2 = Quiz(showQuiz: false, question: "?", options: ["A", "B", "C"], answer: "answer", isCorrect: false)
    static let quiz3 = Quiz(showQuiz: false, question: "?", options: ["A", "B", "C"], answer: "answer", isCorrect: false)
    static let quiz4 = Quiz(showQuiz: false, question: "?", options: ["A", "B", "C"], answer: "answer", isCorrect: false)
    
    static let sampleQuiz: [Quiz] = [quiz1, quiz2, quiz3, quiz4]
}
