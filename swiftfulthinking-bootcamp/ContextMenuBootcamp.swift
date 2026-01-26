//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 18/12/2025.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .cyan
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(Color.white)
        .padding(30)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .contextMenu {
            Button {
                backgroundColor = .red
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .yellow
            } label: {
                Text("Report post")
            }

            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }

        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
