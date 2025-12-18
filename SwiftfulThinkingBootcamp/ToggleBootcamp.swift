//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 18/12/2025.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn) {
                    Text("Change status")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.cyan))
            
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    ToggleBootcamp()
}
