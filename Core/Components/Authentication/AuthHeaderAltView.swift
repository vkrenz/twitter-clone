//
//  AuthHeaderAltView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-06.
//

import SwiftUI

struct AuthHeaderAltView: View {
    
    var body: some View {
        VStack {
            Image("Twitter_Logo_Fill_Circle")
                .resizable()
                .scaledToFit()
                .frame(width: 86, height: 86)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(height: 260)
        .background(Color("LightBlue"))
        .foregroundColor(.white)
    }
}

#Preview {
    AuthHeaderAltView()
}
