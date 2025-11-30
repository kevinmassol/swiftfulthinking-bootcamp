//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 30/11/2025.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(title)
            
            Button("Press me !") {
                title = "BUTTON #1 WAS PRESSED  !"
            }
            .tint(Color.red)
            
            Button {
                title = "BUTTON #2 WAS PRESSED  !"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                title = "Button #3 was pressed !"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                    }
            }
            
            Button {
                title = "Button #4 was pressed !"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
            }
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
