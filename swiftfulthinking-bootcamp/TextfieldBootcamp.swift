//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 18/12/2025.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldtext: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here..", text: $textFieldtext)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .foregroundStyle(Color.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        savetext()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .foregroundStyle(Color.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp !")
        }
    }
    func textIsAppropriate() -> Bool {
        if textFieldtext.count >= 3 {
            return true
        }
        return false
    }
    
    func savetext() {
        dataArray.append(textFieldtext)
        textFieldtext = ""
    }
}

#Preview {
    TextfieldBootcamp()
}
