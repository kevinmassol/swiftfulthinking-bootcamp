//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 15/11/2025.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.red]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x: 0, y: 10)
                    .opacity(0.7)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.cyan)
                            .frame(width: 35, height: 35)
                            .overlay {
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(Color.white)
                            }
                            .shadow(color: .black, radius: 10, x: 0, y: 5)
                    })
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
