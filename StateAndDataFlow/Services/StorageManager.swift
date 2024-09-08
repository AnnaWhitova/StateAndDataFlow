//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Анна Белова on 07.09.2024.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()

    @AppStorage("userData") var userData: Data?
    
    private var decoder = JSONDecoder()
    private var encoder = JSONEncoder()

    private init() {}

    func saveUser(_ user: User) {
        if let encoded = try? encoder.encode(user) {
            userData = encoded
        }
    }

    func FetchUser() -> User? {
        guard let userData = userData else {return nil}
        return try? decoder.decode(User.self, from: userData)
    }
    
    func logOut(_ userManager: UserManager) {
        userManager.user.isLoggedIn = false
    }
}
