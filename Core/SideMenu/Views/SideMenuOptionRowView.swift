//
//  SideMenuOptionRowView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-30.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            Text(viewModel.title)
                .font(.subheadline)
            Spacer()
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    SideMenuOptionRowView(viewModel: .Profile)
}
