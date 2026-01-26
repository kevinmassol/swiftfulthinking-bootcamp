//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 19/01/2026.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button("Button Title") {
                //
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.buttonBorder)
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
