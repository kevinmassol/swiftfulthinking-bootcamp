//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 14/11/2025.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("image-Mac")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 350, height: 350)
//            .clipped()
//            .cornerRadius(150)
//            .foregroundStyle(Color.red)
            .clipShape(
                Circle()
//                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
            )
    }
}

#Preview {
    ImageBootcamp()
}
