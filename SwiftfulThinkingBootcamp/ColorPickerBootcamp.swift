//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 21/12/2025.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .foregroundStyle(Color.white)
            .font(.headline)
            .padding(50)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ColorPickerBootcamp()
}
