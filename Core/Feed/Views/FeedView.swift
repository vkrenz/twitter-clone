//
//  FeedView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetsRowView()
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
