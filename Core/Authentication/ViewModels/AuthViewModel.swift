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
        // TODO: Later then work on Login
        print("DEBUG: Login with email: \(email)")
    }
    
    func register(withEmail email: String, password: String, fullName: String, username: String) {
        // TODO: First... Rigester User
        Auth.auth().createUser(withEmail: email, password: password) { res, error in
            if let error = error {
                print("DEBUG: Failed to register user with error: \(error.localizedDescription)")
                return
            }
            
            guard let user = res?.user else { return }
            self.userSession = user
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: User is \(String(describing: self.userSession))")
        }
    }
}
