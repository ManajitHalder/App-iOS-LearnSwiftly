//
//  CodeView.swift
//  
//  Created by Manajit Halder on 01/02/24 using Swift 5.0 on MacOS 13.6
//  

import SwiftUI

struct CodeView: View {
    let languageName: String
    let code: String
    
    @State private var isCodeCopied = false
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(languageName)
                    .font(.caption2)
               
                Spacer()
                
                Button {
                    isCodeCopied = true
                    UIPasteboard.general.string = code
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isCodeCopied = false
                    }
                } label: {
                    HStack {
                        if isCodeCopied {
                            Image(systemName: "checkmark")
                            Text("Copied")
                        } else {
                            Image(systemName: "clipboard")
                            Text("Copy code")
                        }
                    }
                    .font(.caption2)
                }
            }
            .padding()
            .background(Color(.darkGray))
            .foregroundColor(.white)
            .frame(height: 25)
            .cornerRadius(5)

            ScrollView {
                VStack {
                    Text(code)
                        .font(.system(.body, design: .monospaced))
                        .foregroundColor(.white)
                        .padding([.top, .leading, .trailing], 10)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.black)
                .cornerRadius(8)
            }
        }
        .padding(.top, 10)
    }
}

struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        CodeView(languageName: "swift", code: "struct ContentView: View {\n    var body: some View {\n        Text(\"Hello, SwiftUI, How are you doing in my app fksdfds fldsjf sdjfdlsj fkldsjfk jdsklfjsdlkfjsdklfjd dkslfjklds jfkldsjfklsdjfkljsd\")\n    }\n}")
    }
}
