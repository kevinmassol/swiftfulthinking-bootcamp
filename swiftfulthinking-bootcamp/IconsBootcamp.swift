//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 14/11/2025.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
//            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .scaledToFill()
//            .font(.title)
//            .font(.system(size: 300))
            .foregroundStyle(Color.red)
            .frame(width: 200, height: 200)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
