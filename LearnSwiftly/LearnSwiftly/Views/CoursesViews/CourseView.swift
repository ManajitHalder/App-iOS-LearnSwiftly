//
//  CourseView.swift
//  
//  Created by Manajit Halder on 18/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct CourseView: View {
    @ObservedObject private var courseViewModel = CourseViewModel()
    
    let logo: String
    let title: String
    let description: String
    let statusColor: String
    
    var body: some View {
        
        NavigationLink(destination: ChapterView()) {
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: 10, height: 200)
                        .foregroundColor(Color(statusColor))
                        .padding(.leading, 10)
                        .padding(.trailing, 2)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 200)
        //                    .foregroundColor(Color("lightGreen"))
                            .foregroundColor(.orange)
                            .padding(.trailing, 10)
                        
                        VStack {
                            HStack {
                                Image(systemName: logo)
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.purple)
                                    .padding([.trailing, .leading], 25)
                                
                                Text(title)
                                    .font(.custom("Cochin", size: 25))
                                    .bold()
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .padding(.trailing, 10)
                            }
                            .frame(height: 80)
                            .padding(10)
                            
                            Divider()
                                .foregroundColor(.black)
                            
                            Text(description)
                                .multilineTextAlignment(.center)
                                .padding([.leading, .trailing], 20)
                                .foregroundColor(.black)
                                .font(.custom("Cochin", size: 20))
                                .padding(.bottom, 10)
                        }
                    }
                }
                
                HStack {
                    Button {
                        // Like the Course
                    } label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                    }

                    Button {
                        // Enroll the Course
//                        courseViewModel.updateCourseStatus(course: Self, status: .enrolled)
//                        courseViewModel.updateCourseStatus(course: <#T##Course#>, status: <#T##CourseStatus#>)
                    } label: {
                        Image(systemName: "cart.fill.badge.plus")
                            .foregroundColor(.white)
                    }
                    
                    Button {
                        // Unenroll the Course
//                        courseViewModel.updateCourseStatus(status: .notEnrolled)
                    } label: {
                        Image(systemName: "cart.fill.badge.minus")
                            .foregroundColor(.white)
                    }
                }
                .frame(height: 25)
                .background(.black)
                .padding([.bottom, .leading, .trailing], 10)
            }
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(logo: "", title: "", description: "", statusColor: "")
    }
}
