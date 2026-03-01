//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 20/11/2025.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
//        .padding(.horizontal, 200)
        .background(Color.blue)
    }
}

#Preview {
    SpacerBootcamp()
}
