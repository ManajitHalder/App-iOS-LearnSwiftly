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
}

struct Content: Identifiable {
    let id: UUID
    var elements: [ContentElement]
    var numberOfQuiz: Int
    var quiz: [Quiz]
}

