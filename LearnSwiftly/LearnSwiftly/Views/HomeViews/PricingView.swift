//
//  PricingView.swift
//  
//  Created by Manajit Halder on 19/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct PricingView: View {
    var body: some View {
        
        ScrollView(showsIndicators: true) {
            VStack {
                Text("Pricing")
                    .font(.title)

                Text("Start with the Basic plan and move on to the Pro plan whenever you need it. No hidden cost.")
                    .multilineTextAlignment(.leading)
                    .padding(20)
                    .font(.callout)
                
                VStack {
                    HStack {
                        Text("Basic")
                            .font(.title)
                        
                        Text("*Free of cost")
                            .font(.callout)
                    }
                    .padding(.top, 20)
                    
                    Divider()
                        .background(.black)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        BulletPoint(text: "Read any lesson")
       
                        BulletPoint(text: "Track your performance")
                        
                        BulletPoint(text: "More than 10 courses")
                    }
                    .padding(20)
                    
                    HStack {
                        Button {
                            //
                        } label: {
                            Text("Keep Learning")
                                .fontWeight(.bold)
                        }
                        .buttonBorderShape(.capsule)
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                    }
                }
                .background(.gray)
                .foregroundColor(.white)
                .padding(20)
            }
        }
    }
}

struct BulletPoint: View {
    let text: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 5) {
            Image(systemName: "checkmark.circle")
                .foregroundColor(.blue)
                .fontWeight(.bold)
                .padding(.trailing, 10)
            Text(text)
        }
        Divider()
            .background(.black)
    }
}

struct PricingView_Previews: PreviewProvider {
    static var previews: some View {
        PricingView()
    }
}
