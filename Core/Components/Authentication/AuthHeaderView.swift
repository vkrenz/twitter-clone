//
//  AuthHeaderView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-06.
//

import SwiftUI

enum AuthHeaderViewVariantOptions: String {
    case Default
    case Alternative
}

struct AuthHeaderView: View {
    let top_title: String
    let bottom_title: String
    
    let authHeaderViewVariant: AuthHeaderViewVariantOptions
    
    var body: some View {
        if authHeaderViewVariant == .Default {
            VStack(alignment: .leading) {
                 Text(top_title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(bottom_title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 260)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
        }
//        else if authHeaderViewVariant == .Alternative {
//            VStack {
//                Image("Twitter_Logo_Fill_Circle")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 80, height: 80)
//                
//                VStack(spacing: 10) {
//                    CustomInputField(imageName: "person", placeholderText: "Email", variant: .Capsule, text: $email)
//                }
//            }
//            .padding(.horizontal)
//            .frame(maxWidth: .infinity, alignment: .center)
//            .frame(height: 260)
//            .background(Color("LightBlue"))
//            .foregroundColor(.white)
//        }
    }
}

#Preview {
    AuthHeaderView(top_title: "Hello,", bottom_title: "Welcome back", authHeaderViewVariant: .Alternative)
}
