//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 04/01/2026.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundStyle(isSelected ? Color.green : Color.red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
