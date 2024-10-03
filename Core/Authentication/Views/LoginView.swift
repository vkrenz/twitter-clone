//
//  LoginView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-02.
//

import SwiftUI

struct LoginView: View {
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
            
            VStack {
                 
            }
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    LoginView()
}
