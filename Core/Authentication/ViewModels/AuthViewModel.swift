//
//  AuthViewModel.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-07.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticateUser = false
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(String(describing: self.userSession?.uid))")
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail:  email, password: password) { res, error in
            if let error = error {
                print("DEBUG: Failed to sign in  user with error: \(error.localizedDescription)")
                return
            }
            
            guard let user = res?.user else { return }
            self.userSession = user
            print("DEBUG: User signed in.")
        }
    }
    
    func register(withEmail email: String, password: String, fullName: String, username: String) {
        // TODO: First... Rigester User
        Auth.auth().createUser(withEmail: email, password: password) { res, error in
            if let error = error {
                print("DEBUG: Failed to register user with error: \(error.localizedDescription)")
                return
            }
            
            guard let user = res?.user else { return }
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: User is \(String(describing: self.userSession))")
            
            let data = [
                "email": email,
                "username": username.lowercased(),
                "fullName": fullName,
                "uid": user.uid
            ]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticateUser = true 
                }
        }
    }
    
    func signOut() {
        // Client-side sign out
        userSession = nil
        
        // Server=side sign out
        try? Auth.auth().signOut()
    }
}
