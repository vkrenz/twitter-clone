//
//  ProfileView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            headerView
            
            HStack() {
                Spacer()
                
                Image(systemName: "bell.badge")
                    .font(.subheadline)
                    .padding(6)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            }
            .padding(.top, 6)
            
            Spacer()
        }
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            // TODO: Replace with User Cover Photo
            // User Cover Photo
            Color(.blue)
                .ignoresSafeArea(.all)
            VStack(alignment: .leading) {
                HStack {
                    // Back button
                    Button {
                        
                    } label: {
                        ZStack(){
                            Circle()
                                .foregroundColor(.black.opacity(0.3))
                                .frame(width: 30, height: 30)
                                .offset(x:16)
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .offset(x:16)
                        }
                    }
                    Spacer()
                    // Search
                    Button {
                        
                    } label: {
                        ZStack(){
                            Circle()
                                .foregroundColor(.black.opacity(0.3))
                                .frame(width: 30, height: 30)
                                .offset(x:-16)
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .offset(x:-16)
                        }
                    }
                }

                // TODO: Replace with User Profile Photo
                // User Profile Photo
                ZStack {
                    Circle()
                        .frame(width: 80, height: 80)
                        .offset(y: 32)
                        .foregroundColor(.white)
                    Circle()
                        .frame(width: 72, height: 72)
                        .offset(y: 32)
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
        }
        .frame(width: .infinity, height: 100)
    }
    
}

#Preview {
    ProfileView()
}
