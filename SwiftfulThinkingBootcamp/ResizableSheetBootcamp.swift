//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 23/01/2026.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .medium, .large])
                .presentationDetents([.medium, .large], selection: $detents)
//                .interactiveDismissDisabled()
        }
    }
}

struct MyNextView : View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Hello, World !")
                .foregroundStyle(Color.white)
            
            VStack(spacing: 30) {
                Button("Medium") {
                    detents = .medium
                }
                
                Button("Lage") {
                    detents = .large
                }
            }
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
