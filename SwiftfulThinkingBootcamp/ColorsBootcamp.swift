//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 13/11/2025.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.cyan) Fonctionne avant le .frame
            .frame(width: 300, height: 200, alignment: .center)
            .foregroundStyle(Color.cyan)
            .shadow(color: .red.opacity(0.7), radius: 10, x: -10, y: 20)
    }
}

#Preview {
    ColorsBootcamp()
}
