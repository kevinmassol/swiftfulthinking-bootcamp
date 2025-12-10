//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 10/12/2025.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                NavigationLink("Hello, world !") {
                    MyOtherScreen()
                }
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            //            .navigationBarTitleDisplayMode(.automatic)
            //            .toolbar(.hidden)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "person.fill")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        MyOtherScreen()
                    } label: {
                        Image(systemName: "gear")
                    }
                    .tint(Color.red)
                }
            }
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green
                .navigationTitle("Green Screen !")
                .toolbar(.hidden)
            
            VStack(spacing: 30) {
                Button("BACK BUTTON") {
                    dismiss()
                }
                
                NavigationLink("Click here") {
                    Text("3rd screen !")
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationViewBootcamp()
}
