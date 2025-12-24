//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 24/12/2025.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: Int = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: CGFloat(100 + widthIncrement), height: 100)
            
            Stepper("Stepper 2") {
                // increment
                incrementWidth(amount: 10)
            } onDecrement: {
                // decrement
                incrementWidth(amount: -10)
            }
            .padding(50)
        }
    }
    func incrementWidth(amount: Int) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
