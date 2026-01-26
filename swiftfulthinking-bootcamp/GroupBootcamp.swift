//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 24/01/2026.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundStyle(Color.blue)
            .font(.headline)
        }
        .foregroundStyle(Color.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
