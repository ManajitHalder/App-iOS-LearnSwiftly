//
//  Chapters.swift
//  
//  Created by Manajit Halder on 21/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

enum ChapterStatus: String, CaseIterable {
    case yetToStart
    case inProgress
    case locked
    case completed
    
    func name() -> String {
        return self.rawValue.capitalized
    }
}

struct Chapters: Identifiable {
    let id: UUID
    let courseTitle: String
    var name: String
    var summary: String
    var topicsList: [Topics]
    var status: ChapterStatus
    
    init(id: UUID = UUID(), name: String, summary: String, topicsList: [Topics], status: ChapterStatus) {
        self.id = id
        self.name = name
        self.summary = summary
        self.topicsList = topicsList
        self.status = status
    }
}
