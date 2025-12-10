//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 10/12/2025.
//

import SwiftUI

struct ListBootcamp: View {
    
    struct Fruit: Identifiable, Hashable {
        let id = UUID()
        let name: String
    }
    
    @State var fruits: [Fruit] = [
        Fruit(name: "Apple"),
        Fruit(name: "Oranges"),
        Fruit(name: "Banana"),
        Fruit(name: "Peach")
    ]
    
    struct Veggie: Identifiable, Hashable {
        let id = UUID()
        let name: String
    }
    
    @State var veggies: [Veggie] = [
        Veggie(name: "Potato"),
        Veggie(name: "Tomato"),
        Veggie(name: "Carrot")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits) { fruit in
                        Text(fruit.name.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.yellow)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .foregroundStyle(Color.orange)
                }
                
                Section {
                    ForEach(veggies) { veggie in
                        Text(veggie.name.capitalized)
                    }
                } header: {
                    Text("Vegetables")
                }
            }
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        }
        .tint(Color.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append(Fruit(name: "Coconut"))
    }
}


#Preview {
    ListBootcamp()
}
