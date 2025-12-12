//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 12/12/2025.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backroundColor: Color = .yellow
    
    enum MyAlerts {
        case sucess
        case error
    }
    
    var body: some View {
        ZStack {
            backroundColor
            VStack(spacing: 30) {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .sucess
//                    alertTitle = "Successfulyl uptloaded video ✅"
//                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert) {
                    //            Alert(title: Text("There was an error !"))
                    getAlert()
                }
            }
        }
        .ignoresSafeArea()
    }
    
    func getAlert () -> Alert {
        switch alertType {
        case .sucess:
            return Alert(
                title: Text("This was a success !"),
                message: nil,
                dismissButton: .default(Text("OK"), action: {
                    backroundColor = .green
                }))
        case .error:
            return Alert(title: Text("There was an error !"))
        case nil:
            return Alert(title: Text("Error"))
        }
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
        
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
