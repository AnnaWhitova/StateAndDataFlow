//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Анна Белова on 06.09.2024.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
            if userManager.user.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
    }
}

#Preview {
    RootView()
        .environmentObject(UserManager())
}
