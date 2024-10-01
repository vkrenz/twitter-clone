//
//  ProfileView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedOption: TweetFilterViewModel = .Tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    var userIsVerified = true
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButtons
            
            userBasicInfo
            userDetails
            userStats
            
            tweetFilterOptionsBar
            
            tweetsView
            
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
                        mode.wrappedValue.dismiss()
                    } label: {
                        ZStack(){
                            Circle()
                                .foregroundColor(.black.opacity(0.3))
                                .frame(width: 30, height: 30)
                                .offset(x:20)
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .offset(x:20)
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
                                .offset(x:-20)
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .offset(x:-20)
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
    var actionButtons: some View {
        HStack(spacing: 12 ) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.subheadline)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }

        }
        .padding(.trailing)
        .padding(.top, 6)
    }
    var userBasicInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(alignment: .center) {
                // TODO: Replace with User First + Last Name
                // User First + Last Name
                Text("Victor Krenzel")
                    .font(.title2).bold()
                VerifiedSealView(userIsVerified: userIsVerified)
                    .font(.subheadline).bold()
                if !userIsVerified {
                    HStack {
                        Image(systemName: "checkmark.seal.fill")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                        Text("Get verified")
                            .font(.subheadline)
                            .bold()
                    }
                    .padding(.horizontal, 6)
                    .padding(.vertical, 3)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke())
                    
                }
            }
            
            // TODO: Replace with User Handle
            // User Handle
            Text("@vic")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            // TODO: Replace with User Bio
            // User Bio
            Text("I am a test user! :D")
                .font(.subheadline)
                .padding(.vertical)
        }
        .padding(.horizontal)
    }
    var userDetails: some View {
        // TODO: Replace with User Details
        // User Details
        return VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 10) {
                HStack(spacing: 3) {
                    // User Location
                    Image(systemName: "mappin.and.ellipse")
                    Text("Toronto")
                }
                .font(.caption)
                .foregroundColor(.gray)
                
                HStack(spacing: 3) {
                    // User Link
                    Image(systemName: "link")
                    Text("bit.ly/vkrenzel")
                        .foregroundColor(.blue)
                }
                .font(.caption)
                .foregroundColor(.gray)
                
                HStack(spacing: 3) {
                    // User Birthday
                    Image(systemName: "balloon")
                    Text("Born September 27 1999")
                }
                .font(.caption)
                .foregroundColor(.gray)
            }
            
            HStack(spacing: 10) {
                HStack(spacing: 3) {
                    // User Join Date
                    Image(systemName: "calendar")
                    Text("Joined July 2017")
                }
                .font(.caption)
                .foregroundColor(.gray)
            }
        }
        .padding(.horizontal)
    }
    var userStats: some View {
        UserStatsView()
            .padding()
    }
    var tweetFilterOptionsBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases,  id: \.rawValue) { option in
                VStack {
                    Text(option.title)
                        .font(.subheadline)
                        .fontWeight(selectedOption == option ? .bold : .regular)
                        .foregroundColor(selectedOption == option ? .black : .gray)
                    
                    if selectedOption == option {
                        Capsule()
                            .foregroundColor(.blue)
                            .frame(height: 3)
                            .matchedGeometryEffect(id:"option"  , in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut ) {
                        self.selectedOption = option
                    }
                }
            }
        }
        .overlay {
            Divider()
                .offset(y:16)
        }
    }
    // Header End
    
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    TweetsRowView()
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
