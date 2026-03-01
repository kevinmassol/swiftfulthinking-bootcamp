//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 12/11/2025.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
//            .fill(Color.blue)
//            .foregroundStyle(Color.cyan)
//            .stroke(lineWidth: 10)
//            .stroke(Color.blue, lineWidth: 10)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
