//
//  Topics.swift
//  
//  Created by Manajit Halder on 21/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

enum ContentType: Codable {
    case subtitle(String)
    case text(String)
    case code(String)
    case image(String)
}

struct ContentElement: Identifiable, Codable {
    let id: UUID
    let type: ContentType
    
    init(id: UUID = UUID(), type: ContentType) {
        self.id = id
        self.type = type
    }
}

struct Content: Identifiable, Codable {
    let id: UUID
    var title: String
    var elements: [ContentElement]
//    var numberOfQuiz: Int
    var quiz: [Quiz]
    
    init(id: UUID = UUID(), title: String, elements: [ContentElement], quiz: [Quiz]) {
        self.id = id
        self.title = title
        self.elements = elements
//        self.numberOfQuiz = numberOfQuiz
        self.quiz = quiz
    }
}

extension Content {
    static let content11 = Content(
        title: "Basics of Swift Programming",
        elements: [
            ContentElement(type: .subtitle("Topic Name 1")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .subtitle("Topic Name 2")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("struct ContentView: View {\n    var body: some View {\n        Text(\"Hello, SwiftUI, How are you doing in my app fksdfds fldsjf sdjfdlsj fkldsjfk jdsklfjsdlkfjsdklfjd dkslfjklds jfkldsjfklsdjfkljsd\n"))
        ],
        quiz: Quiz.sampleQuiz)
    
    static let content12 = Content(
        title: "Variables in Swift",
        elements: [
            ContentElement(type: .subtitle("Topic Name 1")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .subtitle("Topic Name 2")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        quiz: Quiz.sampleQuiz)
    
    static let content13 = Content(
        title: "Strings in Swift",
        elements: [
            ContentElement(type: .subtitle("Topic Name 1")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .subtitle("Topic Name 2")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        quiz: Quiz.sampleQuiz)
    
    static let content21 = Content(
        title: "Optionals",
        elements: [
            ContentElement(type: .subtitle("Topic Name 1")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        quiz: Quiz.sampleQuiz)
    
    static let content22 = Content(
        title: "Closures with examples",
        elements: [
            ContentElement(type: .subtitle("Topic Name 1")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        quiz: Quiz.sampleQuiz)
    
    static let content23 = Content(
        title: "Multithreading",
        elements: [
            ContentElement(type: .subtitle("Topic Name 1")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .subtitle("Topic Name 2")),
            ContentElement(type: .text("In this enum, serves as a clear indication that the task has not been initiated. Choose the term that aligns best with the language and context used in your application.")),
            ContentElement(type: .code("print()\nprint\nprint\n"))
        ],
        quiz: Quiz.sampleQuiz)
}

