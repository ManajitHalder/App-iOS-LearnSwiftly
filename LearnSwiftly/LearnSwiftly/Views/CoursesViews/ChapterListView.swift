//
//  ChapterListView.swift
//  
//  Created by Manajit Halder on 18/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ChapterListView: View {
//    @ObservedObject var courseListViewModel: CourseViewModel
    let chapters: [Chapter]
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("screenBackground")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            VStack {
                HeaderBar()
                
//                HStack {
//                    Text("Chapter::")
//                        .font(.title2)
//                        .foregroundColor(.white)
//                    
//                    Text("\(course.chapters.count)")
//
//                    Spacer()
//                }
//                .foregroundColor(.white)
//                .padding()

                Spacer()
                
                ScrollView {
                    VStack {
                        ForEach(chapters) { chapter in
                            NavigationLink(destination: ContentView(contents: chapter.contents)) {
                                VStack {
                                    Text("\(chapter.chapterIndex)")
                                    Text(chapter.name)
                                    Text(chapter.summary)
                                    Text("\(chapter.status.rawValue)")
                                }
                                .foregroundColor(.white)
                                .frame(height: 80)
                                .background(.yellow)
                                .padding()
                            }
                        }
                    }
                    .padding(.bottom, 100)
                }
               // FooterBar()
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}

struct ChapterListView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterListView(chapters: [])
    }
}
