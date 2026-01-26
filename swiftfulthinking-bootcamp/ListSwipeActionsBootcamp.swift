//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 21/01/2026.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple", "Banana", "Orange", "Pineapple", "Strawberry"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            //
                        }
                        .tint(Color.red)
                        
                        Button("Save") {
                            //
                        }
                        .tint(Color.gray)
                        
                        Button("Junk") {
                            //
                        }
                        .tint(Color.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            //
                        }
                        .tint(Color.yellow)
                    }
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        //
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
