//
//  InviteFriendSheetView.swift
//  
//  Created by Manajit Halder on 28/03/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct InviteFriendSheetView: View {
    @Binding var isFriendInviteSent: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    isFriendInviteSent.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .padding()
                
                Spacer()
            }
            
            Spacer()
            
            Text("Install & Learn http://play.google.com/store/apps")
            
            Spacer()
        }
        .presentationDetents([.fraction(0.70)])
        .presentationDragIndicator(.hidden)
        .presentationCornerRadius(20.0)
        .presentationBackground(Color.gray)
    }
}

#Preview {
    InviteFriendSheetView(isFriendInviteSent: .constant(false))
}
