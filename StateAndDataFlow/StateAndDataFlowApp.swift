//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Анна Белова on 02.09.2024.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
 
    var body: some Scene {
        WindowGroup {
           RootView()
        }
        .environmentObject(userManager)
    }
}
