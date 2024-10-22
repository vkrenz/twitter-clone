//
//  CustomInputField.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-06.
//

import SwiftUI

struct CustomInputField: View {
    let imageName: String
    let placeholderText: String
    var isSecureField: Bool?  = false
    
    @Binding var text: String
     
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if isSecureField ?? false {
                    SecureField(placeholderText, text: $text)
                } else {
                    TextField(placeholderText, text: $text)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

#Preview {
    VStack {
        CustomInputField(
            imageName: "envelope",
            placeholderText: "Email",
            text: .constant("")
        )
        .padding()
        
        CustomInputField(
            imageName: "lock",
            placeholderText: "Password", 
            isSecureField: true,
            text: .constant("")
        )
        .padding()
    }
}
