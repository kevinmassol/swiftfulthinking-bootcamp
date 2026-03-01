//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 29/12/2025.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "house.fill", "globe.fill", "person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .background(
            RadialGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                center: .center,
                startRadius: 5,
                endRadius: 300
            ))
            //        TabView(selection: $selectedTab) {
            //            HomeView(selectTab: $selectedTab)
            //                .tabItem {
            //                    Label("Home", systemImage: "house")
            //                }
            //                .tag(0)
            //            Text("BROWSE TAB")
            //                .tabItem {
            //                    Label("Browse", systemImage: "globe")
            //                }
            //                .tag(1)
            //            Text("PROFILE TAB")
            //                .tabItem {
            //                    Label("Profile", systemImage: "person")
            //                }
            //                .tag(2)
            //        }
            //        .tint(Color.red)
            //    }
    }
}

    
    struct HomeView: View {
        
        @Binding var selectTab: Int
        
        var body: some View {
            ZStack {
                Color.red
                VStack {
                    Text("Home Tab")
                        .font(.largeTitle)
                        .foregroundStyle(Color.white)
                    
                    Button {
                        selectTab = 2
                    } label: {
                        Text("Go to profile")
                            .font(.headline)
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
    
    #Preview {
        TabViewBootcamp()
    }
