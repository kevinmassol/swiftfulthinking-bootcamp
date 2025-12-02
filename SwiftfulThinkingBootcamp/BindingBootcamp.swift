//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 02/12/2025.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
            
            VStack {
                Text(title)
                    .foregroundStyle(Color.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
        .ignoresSafeArea()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .red
            buttonColor = .yellow
            title = "New title"
        } label: {
            Text("Button")
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingBootcamp()
}
