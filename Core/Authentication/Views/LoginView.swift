//
//  LoginView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-02.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                 Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back ")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 260)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack(spacing: 40) {
                 // TODO: Make these into custom Email TextFields
                TextField("Email", text: $email)
                // TODO: Make these into custom Password TextFields
               TextField("Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                NavigationLink {
                    // TODO: Create and replace with ResetPasswordView
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 24)
                }
            }
            
            Button(action: {
                // TODO: Handle Sign In
            }, label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            })
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y:0)
            
            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true )
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))
            
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    LoginView()
}
