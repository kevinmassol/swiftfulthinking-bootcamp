//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 24/01/2026.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 😃",
        "Average 🙂",
        "Very bad ☹️"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Click Me") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottom), content: {
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {
                                
                            }
                            if option != feedbackOptions.last {
                                Divider()
                            }
                        }
                    }
                    .padding(20)
                }
                .presentationCompactAdaptation(.popover)
            })
//            .popover(isPresented: $showPopover) {
//                Text("Hello, subscribers")
//                    .presentationCompactAdaptation(.popover)
//            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
