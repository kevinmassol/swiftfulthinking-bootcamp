//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 14/11/2025.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue, Color.white, Color.red]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
            )
//                RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
//                               center: .topLeading,
//                               startRadius: 5,
//                               endRadius: 350)
//                )
//                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
//                                center: .center,
//                                startAngle: .degrees(180),
//                                endAngle: .degrees(360))
//            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
