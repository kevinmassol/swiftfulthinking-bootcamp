//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 07/12/2025.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                VStack {
                    Button("BUTTON") {
                        withAnimation(Animation.easeInOut) {
                            showView.toggle()
                        }
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                
                if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: geo.size.height * 0.5)
//                        .opacity(showView ? 1.0 : 0.0)
//                        .transition(.move(edge: .bottom))
                        .transition(.asymmetric(
                            insertion: .move(edge: .leading),
                            removal: .move(edge: .bottom)
                        ))
                }
            }
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
