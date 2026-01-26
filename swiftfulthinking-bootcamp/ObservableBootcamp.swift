//
//  ObservableBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 25/01/2026.
//

import SwiftUI
import Combine

@Observable class ObservableViewModel: ObservableObject {
    var title: String = "Hello, World!"
}

struct ObservableBootcamp: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "New title1"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "New title2"
        }
    }
}

struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "New title3"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
