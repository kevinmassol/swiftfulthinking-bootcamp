//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 02/12/2025.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue
            
            contentLayer
        }
        .ignoresSafeArea()
    }
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "Oranges", count: 5, color: .orange)
            MyItem(title: "Bananas", count: 20, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
