//
//  CoursesHeaderView.swift
//  
//  Created by Manajit Halder on 26/03/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct CoursesHeaderView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 120)
                .foregroundColor(Color("headerbar"))
            
            HStack {
                Text("Courses")
                    .font(.custom("Cochin", size: 30))
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                Spacer()
            }
            .padding(.top, 25)
            .padding(.leading, 20)
        }
    }
}

#Preview {
    CoursesHeaderView()
}
