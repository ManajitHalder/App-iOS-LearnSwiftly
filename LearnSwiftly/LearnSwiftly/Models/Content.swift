//
//  Topics.swift
//  
//  Created by Manajit Halder on 21/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

enum ContentType {
    case text(String)
    case code(String)
}

struct ContentElement: Identifiable {
    let id: UUID
    let type: ContentType
    
    init(id: UUID = UUID(), type: ContentType) {
        self.id = id
        self.type = type
    }
}

struct Content: Identifiable {
    let id: UUID
    var elements: [ContentElement]
    var numberOfQuiz: Int
    //var quiz: [Quiz]
    
    init(id: UUID = UUID(), elements: [ContentElement], numberOfQuiz: Int) {
        self.id = id
        self.elements = elements
        self.numberOfQuiz = numberOfQuiz
       // self.quiz = quiz
    }
}

extension Content {
    static let content11 = Content(
        elements: [
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        numberOfQuiz: 2)
    
    static let content12 = Content(
        elements: [
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        numberOfQuiz: 2)
    
    static let content13 = Content(
        elements: [
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        numberOfQuiz: 2)
    
    static let content21 = Content(
        elements: [
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        numberOfQuiz: 2)
    
    static let content22 = Content(
        elements: [
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        numberOfQuiz: 2)
    
    static let content23 = Content(
        elements: [
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        numberOfQuiz: 2)
}

