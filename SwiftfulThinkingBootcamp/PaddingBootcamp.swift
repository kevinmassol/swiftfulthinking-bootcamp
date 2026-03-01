//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 18/11/2025.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what will do on this screen. It is multiple lines and we will align the text to the leading edge")
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 10,
                    x: 0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBootcamp()
}
