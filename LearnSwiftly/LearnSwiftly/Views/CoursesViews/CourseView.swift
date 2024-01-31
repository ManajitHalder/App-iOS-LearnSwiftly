//
//  CourseView.swift
//  
//  Created by Manajit Halder on 18/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct CourseView: View {
    @ObservedObject private var courseViewModel = CourseListViewModel()
    
    let logo: String
    let title: String
    let description: String
    let statusColor: String
    
    // Closure to be executed when the "Enroll" button is tapped
    var onEnrollButtonTap: (() -> Void)?
    // Closure to be executed when the "Unenroll" button is tapped
    var onUnenrollButtonTap: (() -> Void)?
    // Closure to be executed when the Course is liked on like thumb tap
    var onLikeCourseOnTap: (() -> Void)?
    
    var body: some View {
        
//        NavigationLink(destination: ChapterView()) {
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
                        if let onLikeCourseOnTap = onLikeCourseOnTap {
                            onLikeCourseOnTap()
                        }
                    } label: {
                        Image(systemName: "heart")
                            .foregroundColor(.white)
                    }

                    Spacer()
                    Button {
                        // Enroll the Course
                        if let onEnrollButtonTap = onEnrollButtonTap {
                            // Call the closure when the "Enroll" button is tapped
                            onEnrollButtonTap()
                        }
                    } label: {
                        Image(systemName: "cart.fill.badge.plus")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button {
                        // Unenroll the Course
                        if let onUnenrollButtonTap = onUnenrollButtonTap {
                            // Call the closure when the "Unenroll" button is tapped
                            onUnenrollButtonTap()
                        }
                    } label: {
                        Image(systemName: "cart.fill.badge.minus")
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: 500)
                .frame(height: 30)
//                .background(.black)
                .padding(.top, 5)
                .padding(.bottom, 10)
                .padding([.leading, .trailing], 30)
            }
//        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(logo: "", title: "", description: "", statusColor: "")
    }
}
