//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Анна Белова on 07.09.2024.
//

import SwiftUI

final class StorageManager: ObservableObject {
    static let shared = StorageManager()

    @AppStorage("userName") var userName: String = ""
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false

    private init() { }

    func saveUser(name: String) {
        userName = name
        isLoggedIn = true
    }

    func logout() {
        userName = ""
        isLoggedIn = false
    }
}
