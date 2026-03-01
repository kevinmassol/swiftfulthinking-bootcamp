//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 17/11/2025.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStacks -> Vertical
    // HStacks -> Horizontal
    // ZStacks -> zIndex (back to front)
    var body: some View {
        VStack(alignment: .center, spacing: 8, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        })
        HStack(alignment: .bottom, spacing: 0, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        })
        ZStack(alignment: .topTrailing, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 80, height: 80)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 60, height: 60)
        })
    }
}

#Preview {
    StacksBootcamp()
}
