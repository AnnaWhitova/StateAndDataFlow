//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Анна Белова on 03.09.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userManager: UserManager
    private var storageManager = StorageManager.shared
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 30)
                let colorCount: Color = userManager.validName ? .green : .red
                Text(userManager.user.name.count.formatted())
                    .foregroundColor(colorCount)
            }
            .padding()
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
                    .disabled(!userManager.validName)
            }
        }
    }
    
    private func login() {
        userManager.user.isLoggedIn = true
        storageManager.saveUser(userManager.user)
    }
}

#Preview {
    LoginView()
        .environmentObject(UserManager())
       
}
