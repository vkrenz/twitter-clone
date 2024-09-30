//
//  UserRowView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import SwiftUI

struct UserRowView: View {
    var userIsVerified = true
    var body: some View {
        HStack() {
            Circle()
                .frame(width: 48)
            VStack(alignment: .leading) {
                HStack {
                    Text("Victor Krenzel")
                        .font(.subheadline).bold()
                    VerifiedSealView(userIsVerified: userIsVerified)
                        .font(.caption)
                }
                Text("@vic")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                HStack {
                    Image(systemName: "person.fill")
                    Text("Following")
                }
                .font(.caption)
                .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    UserRowView()
}
