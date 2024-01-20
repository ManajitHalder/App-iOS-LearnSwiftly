//
//  CourseView.swift
//  
//  Created by Manajit Halder on 18/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct CourseView: View {
    let logo: String
    let title: String
    let description: String
    
    var body: some View {
        
        NavigationLink(destination: ChapterView()) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 200)
                    .foregroundColor(Color("lightGreen"))
                    .padding([.leading, .trailing], 10)
                
                VStack {
                    HStack {
                        Image(systemName: logo)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.purple)
                            .padding(.trailing, 25)
                        
                        Text(title)
                            .font(.custom("Cochin", size: 25))
                            .bold()
                            .foregroundColor(.black)
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
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(logo: "", title: "", description: "")
    }
}
