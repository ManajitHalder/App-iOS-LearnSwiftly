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
                
//                ScrollView {
                    VStack {
                        List(chapters) { chapter in
                            NavigationLink(destination: ContentView(contents: chapter.contents)) {
                                HStack {
                                    VStack {
                                        Text("\(chapter.chapterIndex)")
                                            .font(.custom("Cochin", size: 20))
                                            .fontWeight(.bold)
                                        Spacer()
                                    }
                                    .padding(.trailing, 10)
                                    
                                    VStack {
                                        HStack {
                                            Text(chapter.name)
                                                .font(.custom("Cochin", size: 20))
                                                .fontWeight(.bold)
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack {
                                            Text(chapter.summary)
                                                .font(.custom("Cochin", size: 20))
                                                //.fontWeight(.bold)
                                            Spacer()
                                        }
                                        // Text("\(chapter.status.rawValue)")
                                    }
                                }
                                .padding([.leading, .top, .bottom], 20)
                                .background(.yellow).cornerRadius(20)
                            }
                            .listRowSeparator(.hidden)
                        }
                    }
                    .padding(.bottom, 100)

//                }
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
