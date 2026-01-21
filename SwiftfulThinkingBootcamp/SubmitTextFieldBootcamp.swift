//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 21/01/2026.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.join)
            .onSubmit {
                print("Something to the console")
            }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
