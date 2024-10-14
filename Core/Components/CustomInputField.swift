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
                    
                    TextField(placeholderText, text: $text)
                        
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
            variant: .Outline,
            text: .constant("")
        )
        .padding()
        
        CustomInputField(
            imageName: "lock",
            placeholderText: "Password",
            variant: .Capsule,
            text: .constant("")
        )
        .padding()
    }
}
