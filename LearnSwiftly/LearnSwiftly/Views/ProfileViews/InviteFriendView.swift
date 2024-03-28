//
//  InviteFriendView.swift
//  
//  Created by Manajit Halder on 28/03/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct InviteFriendView: View {
    @State private var isFriendInviteSent: Bool = false
    let sharedText = "Checkout this app @ http://play.google.com/store/apps"
    
    var body: some View {
        ZStack {
            Rectangle()
            
            HStack() {
                Image(systemName: "figure.stand.line.dotted.figure.stand")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.red)
                    .padding([.leading, .trailing], 10)
                
                VStack {
                    HStack {
                        Text("Invite Friends")
                            .font(.title)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("Share your learnings with your friends")
                            .font(.title3)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Button {
                            isFriendInviteSent.toggle()
                        } label: {
                            Text("Invite Friends")
                                .fontWeight(.semibold)
                        }
                        .buttonBorderShape(.automatic)
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                        
                        .sheet(isPresented: $isFriendInviteSent, content: {
//                            InviteFriendSheetView(isFriendInviteSent: $isFriendInviteSent)
                            ActivityViewController(activityItems: [sharedText], preferredContentSize: CGSize(width: 300, height: 400))
                        })
                        
                        Spacer()
                    }
                }
            }
        }
        .frame(height: 180)
        .foregroundColor(Color.orange)
        .cornerRadius(10)
    }
}

struct ActivityViewController: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIActivityViewController

    let activityItems: [Any]
    var preferredContentSize: CGSize // Define a preferred content size

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityViewController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        activityViewController.preferredContentSize = preferredContentSize // Set the preferred content size
        return activityViewController
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // Update
    }
}

#Preview {
    InviteFriendView()
}
