//
//  ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 24/01/2026.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits(in: .horizontal) {
                Text("This is some text that i would like to display to the user")
                Text("This is some text that i would like to display")
                Text("This is some text ")
            }
        }
        .frame(height: 300)
        .font(.headline)
        .padding(16)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
