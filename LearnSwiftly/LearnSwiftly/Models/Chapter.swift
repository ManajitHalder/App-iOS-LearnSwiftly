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
    
    var name: String {
        return self.rawValue.capitalized
    }
}

struct Chapter: Identifiable, Hashable {
    let id: UUID
    var name: String
    var summary: String
    var status: ChapterStatus
    var chapterIndex: Int
    
    init(id: UUID = UUID(), name: String, summary: String, status: ChapterStatus, index: Int) {
        self.id = id
        self.name = name
        self.summary = summary
        self.status = status
        self.chapterIndex = index
    }
}
