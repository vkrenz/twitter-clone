//
//  SideMenuView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-30.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                // TODO: Replace with User Profile Photo
                // User Profile Photo
                Circle()
                    .frame(width: 48)
                VStack(alignment: .leading, spacing: 4) {
                    // TODO: Replace with User First + Last Name
                    // User First + Last Name
                    Text("Victor Krenzel")
                        .font(.headline)
                    // TODO: Replace with User Handle
                    // User Handle
                    Text("@vic")
                        .font(.subheadline )
                        .foregroundColor(.gray)
                    UserStatsView()
                        .padding(.vertical)
                }
            }
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .Profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .Logout {
                    NavigationLink {
                        // TODO: Add Logout Handler/
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    NavigationView {
        SideMenuView()
    }
}
