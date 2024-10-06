//
//  AuthHeaderView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-06.
//

import SwiftUI

struct AuthHeaderView: View {
    let top_title: String
    let bottom_title: String
    
    var body: some View {
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
}

#Preview {
    AuthHeaderView(top_title: "Hello,", bottom_title: "Welcome back")
}
