//
//  RegistrationView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-02.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var username : String = ""
    @State private var fullName: String = ""
    @State private var password: String = "" 
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            AuthHeaderView(top_title: "Get started.", bottom_title: "Create your account.", authHeaderViewVariant: .Default)
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", variant: .Outline, text: $email)
                CustomInputField(imageName: "person", placeholderText: "Username ", variant: .Outline, text: $username)
                CustomInputField(imageName: "person", placeholderText: "Full Name", variant: .Outline, text: $fullName)
                CustomInputField(imageName: "lock", placeholderText: "Password", variant: .Outline, text: $password)
            }
            .padding(32)
            
            Button(action: {
                // TODO: Handle Sign Up
            }, label: {
                Text("Sign Up ")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            })
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y:0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RegistrationView()
}
