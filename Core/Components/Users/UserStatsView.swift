//
//  UserStatsView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-30.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 10) {
            HStack(spacing: 3) {
                Text("350")
                    .font(.caption)
                    .bold()
                Text("Following")
                    .font(.caption)
            }
            HStack(spacing: 3) {
                Text("2K")
                    .font(.caption)
                    .bold()
                Text("Followers")
                    .font(.caption)
            }
        }
    }
}

#Preview {
    UserStatsView()
}
