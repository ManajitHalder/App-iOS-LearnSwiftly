//
//  Quiz.swift
//  
//  Created by Manajit Halder on 26/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

struct Quiz: Identifiable {
    let id: UUID
    var question: String
    var options: [String]
    var answer: String
    var responseMessage: String
    var isCorrect: Bool?
    
    init(id: UUID = UUID(), question: String, options: [String], answer: String, responseMessage: String, isCorrect: Bool?) {
        self.id = id
        self.question = question
        self.options = options
        self.answer = answer
        self.responseMessage = responseMessage
        self.isCorrect = isCorrect
    }
}
