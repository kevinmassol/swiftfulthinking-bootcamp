//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 18/12/2025.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .cyan
    }
    
    var body: some View {
        
        Picker("Picker", selection: $selection) {
            ForEach(filterOptions, id: \.self) { option in
                Text(option)
                    .tag(option)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
        
//        Picker(
//            selection: $selection,
//            content: {
//                ForEach(filterOptions, id: \.self) { option in
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                    }
//                    .tag(option)
//                }
//            },
//            label: {
//                Text(selection)
//            })
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker(selection: $selection) {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .tag("\(number)")
//                }
////                Text("1").tag("1")
////                Text("2").tag("2")
////                Text("3").tag("3")
////                Text("4").tag("4")
////                Text("5").tag("5")
//            } label: {
//                Text("Picker")
//            }
//        }
    }
}

#Preview {
    PickerBootcamp()
}
