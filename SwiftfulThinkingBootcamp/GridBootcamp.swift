//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 26/11/2025.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 200)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(
                        header:
                            Text("Section 1")
                            .foregroundStyle(Color.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    Section(
                        header:
                            Text("Section 2")
                            .foregroundStyle(Color.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.red)
                            .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    }
                })
        }
    }
}
    
#Preview {
    GridBootcamp()
}
