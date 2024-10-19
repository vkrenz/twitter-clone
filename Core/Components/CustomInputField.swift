//
//  CustomInputField.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-06.
//

import SwiftUI

enum variantOptions: String {
    case Outline
    case Capsule
}

struct CustomInputField: View {
    let imageName: String
    let placeholderText: String
    var isSecureField: Bool?  = false
    let variant: variantOptions
    @Binding var text: String
     
    var body: some View {
        VStack {
            if variant == .Outline {
                HStack {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(.darkGray))
                    
                    TextField(placeholderText, text: $text)
                }
                Divider()
                    .background(Color(.darkGray))
            } 
            else if variant == .Capsule {
                HStack(spacing: 10) {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("LightBlue"))
                        .padding(8)
                    
                    if isSecureField ?? false {
                        SecureField(placeholderText, text: $text)
                            .foregroundColor(Color.primary)
                    } else {
                        TextField(placeholderText, text: $text)
                            .foregroundColor(Color.primary)
                    }
                        
                }
                .padding(12)
                .background(.white)
                .cornerRadius(45)
            }
        }
    }
}

#Preview {
    VStack {
        CustomInputField(
            imageName: "envelope",
            placeholderText: "Email", 
            isSecureField: true,
            variant: .Outline,
            text: .constant("")
        )
        .padding()
        
        CustomInputField(
            imageName: "lock",
            placeholderText: "Password", 
            isSecureField: true,
            variant: .Capsule,
            text: .constant("")
        )
        .padding()
    }
}
