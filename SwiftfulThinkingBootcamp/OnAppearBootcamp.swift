//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 02/01/2026.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { i in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    } 
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "This is the new text"
                })
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
