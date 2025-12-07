//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 07/12/2025.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SecondScreen()
//            }
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
        .ignoresSafeArea()
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
