//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 25/01/2026.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            ContentUnavailableView.search(text: "not found")
            
            ContentUnavailableView(
                "Some title",
                systemImage: "heart.fill",
                description: Text("This is some text")
            )
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
