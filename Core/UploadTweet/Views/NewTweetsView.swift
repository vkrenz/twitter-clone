//
//  NewTweetsView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-01.
//

import SwiftUI

struct NewTweetsView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    // TODO: Handle Dismiss
                } label: {
                    Text("Cancel")
                        .padding(.horizontal)
                        .foregroundColor(.blue)
                }
                Spacer()
                Button {
                    // TODO: Handle Post
                } label: {
                    Text("Post")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
            }
            .padding()
            HStack {
                Circle()
                    .frame(width: 38, height: 38)
            }
            Spacer()
        }
    }
}

#Preview {
    NewTweetsView()
}
