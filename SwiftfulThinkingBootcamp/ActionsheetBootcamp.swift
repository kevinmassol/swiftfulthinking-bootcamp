//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 16/12/2025.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .tint(.primary)
                }
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .sheet(isPresented: $showActionSheet) {
            CustomActionSheet(
                isMyPost: actionSheetOption == .isMyPost,
                onShare: {
                    showActionSheet = false
                },
                onDeleteOrReport: {
                    showActionSheet = false
                },
                onCancel: {
                    showActionSheet = false
                }
            )
            .presentationDetents([.height(actionSheetOption == .isMyPost ? 250 : 200)])
            .presentationDragIndicator(.automatic)
        }
    }
    
    struct CustomActionSheet: View {
        
        let isMyPost: Bool
        let onShare: () -> Void
        let onDeleteOrReport: () -> Void
        let onCancel: () -> Void
        
        var body: some View {
            VStack(spacing: 12) {
                Button("Share", action: onShare)
                
                Button(isMyPost ? "Delete" : "Report", role: .destructive) {
                    onDeleteOrReport()
                }
                
                Divider()
                
                Button("Cancel", role: .cancel) {
                    onCancel()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .padding()
        }
    }
}

#Preview {
    ActionsheetBootcamp()
}
