//
//  Topics.swift
//  
//  Created by Manajit Halder on 21/01/24 using Swift 5.0 on MacOS 13.6
//  

import Foundation

struct Topics: Identifiable {
    let id: UUID
    var title: String
    var content: [String]
    var exercise: [String]
}
