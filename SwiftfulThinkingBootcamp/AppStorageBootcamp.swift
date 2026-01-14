//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 14/01/2026.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Kévin"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
