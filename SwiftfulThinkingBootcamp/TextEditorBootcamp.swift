//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 18/12/2025.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .colorMultiply(Color.gray.opacity(0.6))
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                Text(savedText)
                Spacer()
            }
            .padding()
//            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp !")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
