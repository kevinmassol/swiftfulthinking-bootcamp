//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 21/11/2025.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Bye", "Hello", "World"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 50, height: 50)
//                    Text("Index is: \(index)")
//                }
//            }
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
