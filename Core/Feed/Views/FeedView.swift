//
//  FeedView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing ) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetsRowView()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "plus")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView, content: {
                 Text("Showing: New Tweet View")
            })
        }
    }
}

#Preview {
    FeedView()
}
