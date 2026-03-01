//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 12/11/2025.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftful Thinking Bootcamp! I'am really enjoying this course and learning a lot")
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true ,color: .blue)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(10)
//            .kerning(5)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
