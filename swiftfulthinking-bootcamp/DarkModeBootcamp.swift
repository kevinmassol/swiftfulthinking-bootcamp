//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 30/12/2025.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundStyle(Color.primary)
                    Text("This color is SECONDARY")
                        .foregroundStyle(Color.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(Color.black)
                    Text("This color is WHITE")
                        .foregroundStyle(Color.white)
                    Text("This color is RED")
                        .foregroundStyle(Color.red)
                    Text("This colos is globally adaptive")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("This color is locally adaptive")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
