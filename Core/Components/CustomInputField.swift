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
                        SuperTextField(
                            placeholder: Text(placeholderText).foregroundColor(Color("LightBlue")),
                            text: $text
                        )
                    } else {
                        SuperTextField(
                            placeholder: Text(placeholderText).foregroundColor(Color("LightBlue")),
                            text: $text
                        )
                    }
                        
                }
                .padding(12)
                .background(.white)
                .cornerRadius(45)
            }
        }
    }
}

struct SuperTextField: View {
    
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
                .foregroundColor(Color.primary)
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
