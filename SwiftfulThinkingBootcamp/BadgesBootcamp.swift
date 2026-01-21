//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 21/01/2026.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello")
                .badge(5)
            Text("Hello")
                .badge("New")
            Text("Hello")
            Text("Hello")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("New")
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
