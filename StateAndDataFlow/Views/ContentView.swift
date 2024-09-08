//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Анна Белова on 02.09.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var contentViewVM: ContentViewViewModel
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.title)
                .padding(.top, 100)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
                
            Spacer()
            
            ButtonView(action: contentViewVM.startTimer, text: "Start", color: .red)
            
            Spacer()
            
            ButtonView(action: {
                userManager.user.isLoggedIn = false
            }, text: "Log out", color: .blue)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(ContentViewViewModel())
        .environmentObject(UserManager())
}

struct ButtonView: View {
    let action: () -> Void
    let text: String
    let color: Color
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
  )

    }
}
