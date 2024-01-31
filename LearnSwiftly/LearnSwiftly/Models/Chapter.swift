//
//  Chapters.swift
//  
//  Created by Manajit Halder on 21/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

enum ChapterStatus: String, CaseIterable {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case locked = "Locked"
    case completed = "Completed"
}

struct Chapter: Identifiable, Hashable, Equatable {
    let id: UUID
    var name: String
    var summary: String
    var status: ChapterStatus
    var chapterIndex: Int
    var contents: [Content]
    
    init(id: UUID = UUID(), name: String, summary: String, status: ChapterStatus, chapterIndex: Int, contents: [Content] = []) {
        self.id = id
        self.name = name
        self.summary = summary
        self.status = status
        self.chapterIndex = chapterIndex
        self.contents = contents
    }
    
    static func == (lhs: Chapter, rhs: Chapter) -> Bool {
        return lhs.id == rhs.id
    }
    
    // Implement the hash(into:) method for 'Hashable'
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Chapter {
    static let chapter11 = Chapter(
        name: "Introduction to Swift Programming Language",
        summary: "Introdues Swift Programming Language",
        status: ChapterStatus.notStarted,
        chapterIndex: 1
    )
    
    static let chapter12 = Chapter(
        name: "Data Types in Swift",
        summary: "Basice Data Types in Swift programming language",
        status: ChapterStatus.notStarted,
        chapterIndex: 2
    )
    
    static let chapter13 = Chapter(
        name: "Optionals",
        summary: "What are Optional, When to use it.",
        status: ChapterStatus.notStarted,
        chapterIndex: 3
    )
    
    
    static let chapter21 = Chapter(
        name: "Introduction to Swift Programming Language",
        summary: "Introdues Swift Programming Language",
        status: ChapterStatus.notStarted,
        chapterIndex: 1
    )
    
    static let chapter22 = Chapter(
        name: "Data Types in Swift",
        summary: "Basice Data Types in Swift programming language",
        status: ChapterStatus.notStarted,
        chapterIndex: 2
    )
    
    static let chapter23 = Chapter(
        name: "Optionals",
        summary: "What are Optional, When to use it.",
        status: ChapterStatus.notStarted,
        chapterIndex: 3
    )
    
    static let chapter31 = Chapter(
        name: "Introduction to Swift Programming Language",
        summary: "Introdues Swift Programming Language",
        status: ChapterStatus.notStarted,
        chapterIndex: 1
    )
    
    static let chapter32 = Chapter(
        name: "Data Types in Swift",
        summary: "Basice Data Types in Swift programming language",
        status: ChapterStatus.notStarted,
        chapterIndex: 2
    )
    
    static let chapter33 = Chapter(
        name: "Optionals",
        summary: "What are Optional, When to use it.",
        status: ChapterStatus.notStarted,
        chapterIndex: 3
    )
}
