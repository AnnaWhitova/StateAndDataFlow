//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Анна Белова on 07.09.2024.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var user = User()
    
    var validName: Bool {
        user.name.count >= 3
    }
    
}
