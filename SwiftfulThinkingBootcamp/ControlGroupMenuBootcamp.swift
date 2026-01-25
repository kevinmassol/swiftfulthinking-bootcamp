//
//  ControlGroupMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 25/01/2026.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup {
                Button("Un") {
                    //
                }
                Button("Dos") {
                    //
                }
                Button("tres") {
                    //
                }
            }
            Button("1") {
                //
            }
            Button("2") {
                //
            }
            Button("3") {
                //
            }
            Menu("Entries") {
                Button("Hi") {
                    //
                }
                Button("Hello") {
                    //
                }
                Button("Good Morning") {
                    //
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
