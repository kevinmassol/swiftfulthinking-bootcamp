//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by KEVIN on 16/01/2026.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states :
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // Onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // For the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // AppStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(Color.green)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

#Preview {
    OnboardingView()
        .background(Color.blue)
}

// MARK: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" : onboardingState == 3 ? "FINISH" : "NEXT")
        .font(.headline)
        .foregroundStyle(Color.blue)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        .onTapGesture {
            handleNextButtonPressed()
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(Color.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for finding your match online ! In this tutorial we are praticing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            TextField("Your name here..", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(Color.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Picker(selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            }
            label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundStyle(.blue)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .pickerStyle(.wheel)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        // Check inputs
        switch onboardingState {
        case 1:
            guard name.count > 3 else {
                showAlert(title: "Your name must be at least 3 characters long! 🤔")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select your gender! 👩‍👧‍👦")
                return
            }
        default:
            break
        }
        
        // Go to next section
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
