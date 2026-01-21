//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 21/01/2026.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields {
        case username
        case password
    }
    
//    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingFields?
    
    var body: some View {
        VStack(spacing: 40) {
            TextField("Add your name here..", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here..", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Sign Up") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Sign Up 🚀")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
                
            }
            
//            Button("Toogle Focus State") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
