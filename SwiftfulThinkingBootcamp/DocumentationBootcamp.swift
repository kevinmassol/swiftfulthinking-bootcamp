//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 30/12/2025.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas", "Pears"
    ]
    
    @State var showAlert: Bool = false
    
    // MARK: BODY

    // KEVIN - Working copy - things to do:
    /*
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        NavigationStack { // START: NAV
            ZStack {
                // background
                Color.red
                    .ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation Bootcamp")
                .navigationBarItems(trailing: Button("ALERT") {
                    showAlert.toggle()
                })
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert !")
                }
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a ScrollView
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specified title
    ///
    ///This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a messge
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert 
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return  Alert(title: Text(text))
    }
}

// MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
