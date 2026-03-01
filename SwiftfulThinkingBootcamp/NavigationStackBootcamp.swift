//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 23/01/2026.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits: [String] = [
        "Apple", "Banana", "Orange", "Pineapple", "Strawberry"
    ]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 20) {
                    
                    Button {
                        stackPath.append(contentsOf: ["Coconut", "Pineapple", "Watermelon"])
                    } label: {
                        Text("Supper sague")
                    }

                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me! \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("You clicked on: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
