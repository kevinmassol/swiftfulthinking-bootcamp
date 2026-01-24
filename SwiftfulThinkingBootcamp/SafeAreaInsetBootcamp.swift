//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 24/01/2026.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
//            .overlay(
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                ,alignment: .bottom
//            )
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
