//
//  QuizView.swift
//  
//  Created by Manajit Halder on 01/02/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct QuizView: View {
    @State private var optionSelected: Bool = false
    @State private var buttonClicked: Int = 10
    @State private var buttonBackground: Color = Color(.gray)
    
    let quiz: Quiz
    @State private var currentIndex: Int = 0
//    @State private var userAnswer: String = ""
//    @State private var isQuizSubmitted: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Divider()
                
                HStack {
                    Text("Quiz")
                        .font(.custom("Cochin", size: 30))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.leading, 40)
                
                HStack {
                    Text(quiz.question)
                        .font(.custom("Cochin", size: 25))
                        .foregroundColor(.black)
                        .padding([.top, .bottom], 20)
                    Spacer()
                }
                .padding(.leading, 40)
                
                ForEach(quiz.options.indices, id: \.self) { index in
                    Button {
                        optionSelected = true
//                        if buttonClicked {
                           // buttonBackground = Color(.green)
                        buttonClicked = index + 1
                            
                        
                        print(buttonClicked)
//                        }
                    } label: {
                        Text(quiz.options[index])
                            .font(.custom("Cochin", size: 20))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                    }
                    .frame(width: 300)
                    .padding()
                    .background(buttonBackground)
                    .cornerRadius(20)
                    .padding(.bottom, 10)
                    .onSubmit {
//                        changeBackgroundColor()
//                        buttonClicked = true
                        buttonBackground = .yellow
                    }
                }
                .padding([.leading, .trailing], 20)
                
                HStack {
                    Spacer()
                    
                    Button {
                        if buttonClicked == quiz.answer {
                            print("Correct Answers :)")
                        } else {
                            print("Wrong, Try Again!!!")
                        }
                        if optionSelected == true {
                            print("option selected")
                        } else {
                            print("option not selected")
                        }
                    } label: {
                        Text("Submit")
                            .padding()
                            .font(.custom("Cochin", size: 25))
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(10)
                    }
//                    .onTapGesture {
//                        if optionSelected == true {
//                            print("Continue")
//                        } else {
//
////                            Alert(title: Text("Try Again"), message: Text("S"))
//                        }
//                    }
                    .alert(isPresented: $optionSelected) {
                        if buttonClicked != quiz.answer {
                            return Alert(title: Text("Wrong Answer!"), message: nil, dismissButton: .default(Text("Cancel")))
                        }
                        return Alert(title: Text(""))
                    }
                }
                .padding(.trailing, 50)
            }
        }
        .padding()
    }
    
    func changeBackgroundColor() {
        
    }
    
}
 
struct OptionView: View {
    let item: String
    var nextIndex: Int
    @State private var userAnswer = ""

    var body: some View {
        VStack {
            Text(item)
            TextField("Your Answer", text: $userAnswer)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Submit") {
                // Handle the user's answer, and navigate to the next item
                // For simplicity, let's just print the answer and update the index
                print("User Answer: \(userAnswer)")
                // You can implement your logic here based on the answer
                // For now, just move to the next item
//                nextIndex += 1
            }
            .padding()
        }
        .padding()
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(quiz: Quiz(
            showQuiz: true,
            question: "What is the output of the following program ?",
            options: [
                "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")",
                "import Foundation\nvar num1: Int = 102\nvar num2: Int = 230\nvar sum: Int = num1 - num2\nprint(\"Sum is \\(sum)\")",
                "import Foundation\nvar num1: Double = 102\nvar num2: Int = 230\nvar sum: Int = num1 + num2\nprint(\"Sum is \\(sum)\")"],
            answer: 1,
            isCorrect: false))
    }
}
