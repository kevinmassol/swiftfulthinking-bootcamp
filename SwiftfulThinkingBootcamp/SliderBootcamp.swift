//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 29/12/2025.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 10
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text("\(sliderValue, specifier: "%.2f")")
                .foregroundStyle(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...50, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                },
            )
                .tint(Color.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
