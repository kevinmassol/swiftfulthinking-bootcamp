//
//  NavigationSplitViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 24/01/2026.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, VisionOS

struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
                Button(category.rawValue.capitalized) {
                    selectedCategory = category
                }
            }
//            List {
//                ForEach(FoodCategory.allCases, id: \.rawValue) { category in
//                    Button(category.rawValue.capitalized) {
//                        selectedCategory = category
//                    }
//                }
//            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List {
                            ForEach(Fruit.allCases, id: \.rawValue) { fruit in
                                Button(fruit.rawValue.capitalized) {
                                    selectedFruit = fruit
                                }
                            }
                        }
                    case .vegetable:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin")
            }
        } detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select something ")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavigationSplitViewBootcamp()
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetable, meats
}

enum Fruit: String, CaseIterable {
    case apple, orange, banana
}
