//
//  ProfilePhotoSelectorView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-23.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack {
            AuthHeaderView(top_title: "Create your account", bottom_title: "Select a profile photo", authHeaderViewVariant: .Default)
            
            Button(action: {
                // TODO: Handle Add Photo
                print("Pick an image")
            }, label: {
                ZStack {
                    Circle()
                        .stroke(Color("LightBlue"), lineWidth: 4)
                    VStack(spacing: 20) {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Photo")
                            .bold()
                            .font(.title)
                    }
                    .foregroundColor(Color("LightBlue"))
                }
                .scaledToFill()
                .frame(width: 180, height: 180)
                .padding(.top, 44)
            })
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProfilePhotoSelectorView()
}
