//
//  ProfileView.swift
//  
//  Created by Manajit Halder on 17/01/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct ProfilePhotoView: View {
    let photo: String
    let name: String
    
    var body: some View {
        ZStack {
            VStack {
                Image(uiImage: UIImage(contentsOfFile: "/Volumes/Mojave/Users/reyansh/Data/01 Reyansh/Photos/DSC_1400.JPG")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 180)
                    .cornerRadius(10.0)
                
                Text("Reyansh Halder")
                    .foregroundColor(.white)
                    .font(.custom("Cochin", size: 35))
                    .fontWeight(.bold)
            }
            .frame(height: 270)
            .frame(maxWidth: 900)
        }
        .padding()
        .background(.gray)
    }
}

struct ScoreView: View {
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.flexible(minimum: 100)),
            GridItem(.flexible(minimum: 100))
        ], spacing: 8) {
            ZStack {
                Rectangle()
                
                HStack {
                    Image(systemName: "light.panel.fill")
                    Text("Score")
                        .fontWeight(.bold)
                }
                .foregroundColor(.yellow)
            }
            .frame(height: 120)
            
            ZStack {
                Rectangle()
                
                HStack {
                    Image(systemName: "wineglass.fill")
                    Text("Cups")
                        .fontWeight(.bold)
                }
                .foregroundColor(.yellow)
            }
            .frame(height: 120)
            
            ZStack {
                Rectangle()
                
                HStack {
                    Image(systemName: "medal.fill")
                    Text("Medals")
                        .fontWeight(.bold)
                }
                .foregroundColor(.yellow)
            }
            .frame(height: 120)
            
            ZStack {
                Rectangle()
                
                HStack {
                    Image(systemName: "trophy.fill")
                    Text("Trophies")
                        .fontWeight(.bold)
                }
                .foregroundColor(.yellow)
            }
            .frame(height: 120)
        }
        .foregroundColor(.gray)
        .cornerRadius(10)
    }
}

struct CertificateView: View {
    var body: some View {
        Text("Certificate View")
    }
}

struct PremiumCourseView: View {
    @State private var isPremiumCourseSelected: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
            
            VStack {
                VStack {
                    Text("Unlock Premium Courses")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    
                    Text("Unlock unlimited benefits with premium courses")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                HStack {
                    Button {
                        isPremiumCourseSelected.toggle()
                    } label: {
                        Text("Upgrade to Premium")
                            .fontWeight(.bold)
                    }
                    .buttonBorderShape(.automatic)
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                    
                    .sheet(isPresented: $isPremiumCourseSelected) {
                        PremiumPaymentSheetView(isPremiumCourseSelected: $isPremiumCourseSelected)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
        }
        .frame(height: 200)
        .foregroundColor(.purple)
        .cornerRadius(20)
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
        .cornerRadius(20)
    }
}

struct ProfileView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("screenBackground")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)

        .overlay(
            ScrollView {
                VStack {
                    
                    VStack {
                        //HeaderBar()

                        ProfilePhotoView(photo: "", name: "")
                            .padding(.top, 60)
                        
                        ScoreView()
                        
//                        CertificateView()
                        
                        // Premium Course View
                        PremiumCourseView()
                        
                        // Invite a friend
                        InviteFriendView()
                        
                    }
                    .padding()
                    

                    
                    Spacer()

                   // FooterBar()
                }
                .edgesIgnoringSafeArea(.all)
            }
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
