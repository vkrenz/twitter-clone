//
//  AuthViewModel.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-07.
//

import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(String(describing: self.userSession))")
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: Login with email: \(email)")
    }
    
    func register(withEmail email: String, password: String, fullName: String, username: String) {
        print("DEBUG: Register with email: \(email)")
    }
}
