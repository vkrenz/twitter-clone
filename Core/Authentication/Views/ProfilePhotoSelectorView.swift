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
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProfilePhotoSelectorView()
}
