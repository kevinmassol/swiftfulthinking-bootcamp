//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 21/11/2025.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
//    init(count: Int, title: String) {
//        self.count = count
//        self.title = title
//        
//        if title == "Apples" {
//            self.backgroundColor = Color.red
//        } else {
//            self.backgroundColor = Color.orange
//        }
//    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(fruit: Fruit, count: Int) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = Color.red
        } else {
            self.title = "Oranges"
            self.backgroundColor = Color.orange
        }
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font((.largeTitle))
                .foregroundStyle(Color.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    HStack {
        InitializerBootcamp(fruit: .apple, count: 5)
        InitializerBootcamp(fruit: .orange, count: 15)
    }
}
