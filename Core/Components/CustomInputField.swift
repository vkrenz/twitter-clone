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
    @Binding var text: String
     
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CustomInputField(
        imageName: "envelope",
        placeholderText: "Email ",
        text: .constant("")
    )
}
