//
//  Chapters.swift
//  
//  Created by Manajit Halder on 21/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

struct ChapterStatus: Identifiable {
    let id: UUID
    var locked: Bool
    var inprogress: Bool
    var completed: Bool
    
    init(id: UUID = UUID(), locked: Bool = false, inprogress: Bool = false, completed: Bool = false) {
        self.id = id
        self.locked = locked
        self.inprogress = inprogress
        self.completed = completed
    }
}

struct Chapters: Identifiable {
    let id: UUID
    var name: String
    var summary: String
    var topicsList: [Topics]
    var status: ChapterStatus
}
