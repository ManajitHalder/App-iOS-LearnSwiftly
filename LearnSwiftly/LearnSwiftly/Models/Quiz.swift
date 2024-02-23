//
//  Quiz.swift
//  
//  Created by Manajit Halder on 26/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

struct Quiz: Identifiable, Codable {
    let id: UUID
    var showQuiz: Bool
    var question: String
    var options: [String]
    var answer: Int
    var responseMessage: String
    var isCorrect: Bool?
    
    init(id: UUID = UUID(), showQuiz: Bool = false, question: String = "", options: [String] = [], answer: Int = 1, responseMessage: String = "", isCorrect: Bool?) {
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
    static let quiz1 = Quiz(
        showQuiz: true,
        question: "What is the output of the following program ?",
        options: [
            "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")",
            "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 - num2\nprint(\"Sum is \\(sum)\")",
            "import Foundation\nvar num1: Double = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")"],
        answer: 1,
        isCorrect: false)
    
    static let quiz2 = Quiz(
        showQuiz: true,
        question: "What is the output of the following program ?",
        options: [
            "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")",
            "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 - num2\nprint(\"Sum is \\(sum)\")",
            "import Foundation\nvar num1: Double = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")"],
        answer: 1,
        isCorrect: false)
    
    static let quiz3 = Quiz(
        showQuiz: true,
        question: "What is the output of the following program ?",
        options: [
            "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")",
            "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 - num2\nprint(\"Sum is \\(sum)\")",
            "import Foundation\nvar num1: Double = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")"],
        answer: 1,
        isCorrect: false)
    
    static let quiz4 = Quiz(
        showQuiz: true,
        question: "What is the output of the following program ?",
        options: [
            "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")",
            "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 - num2\nprint(\"Sum is \\(sum)\")",
            "import Foundation\nvar num1: Double = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")"],
        answer: 1,
        isCorrect: false)
    
    static let sampleQuiz: [Quiz] = [quiz1]
}
