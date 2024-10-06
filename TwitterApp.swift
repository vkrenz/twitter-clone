//
//  TwitterApp.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-28.
//

import SwiftUI
import Firebase

@main
struct TwitterApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                ContentView()
                LoginView()
            }
        }
    }
}
