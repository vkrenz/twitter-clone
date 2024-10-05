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
            
            Spacer()
            
            VStack(spacing: 40) {
                 // TODO: Make these into custom Email TextFields
                TextField("Email", text: $email)
                // TODO: Make these into custom Password TextFields
               TextField("Password", text: $password)
            }
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    LoginView()
}
