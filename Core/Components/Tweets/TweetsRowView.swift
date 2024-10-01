//
//  TweetsRowView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import SwiftUI

struct ExpandableTweetView: View {
    let text: String
    let maxLen = 100
    @State private var expanded: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            if expanded {
                // Show full tweet when expanded
                Text(text)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
            } else {
                // Show truncated text (truncText()) with "read more" inline
                Text(truncText() + "\(text.count > maxLen ? "... " : "")")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                if text.count > maxLen {
                    Text("Read more")
                        .multilineTextAlignment(.leading)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .onTapGesture {
                            expanded.toggle()
                        }
                }
            }
            // TODO: Delete this (debug)
            Text("(\(text.count))")
                .font(.subheadline)
            
            if expanded {
                // Option to add "Read less" when expanded
                Text("Read less")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        expanded.toggle()
                    }
            }
        }
    }
    
    private func truncText() -> String {
        return text.count > maxLen ? String(text.prefix(maxLen)) : text
    }
}

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                // Profile Pic
                // TODO: Replace with UserProfilePicture
                Circle()
                    .frame(width: 52, height: 52)
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    // User Info
                    HStack(spacing: 5) {
                        // User Name
                        // TODO: Replace with User FirstName + LastName
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        VerifiedSealView()
                            .font(.subheadline)
                        // User Handle (@userhandle)
                        // TODO: Replace with User Handle
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        // Middot Unicode
                        Text("\u{00B7}")
                        // Tweet Time Stamp
                        // TODO: Replace with Tweet Time Stamp
                        Text("49w")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    // Tweet Caption
                    ExpandableTweetView(text: "Hello, world! 🌍")
                    // Action Buttons
                    HStack {
                        HStack(spacing: 5) {
                            Button {
                                // TODO: Add an action here...
                            } label: {
                                Image(systemName: "message")
                            }
                            Text("5")
                        }

                        Spacer()
                        
                        HStack(spacing: 5) {
                            Button {
                                // TODO: Add an action here...
                            } label: {
                                Image(systemName: "arrow.2.squarepath")
                            }
                            Text("15")
                        }

                        Spacer()
                        
                        HStack(spacing: 5) {
                            Button {
                                // TODO: Add an action here...
                            } label: {
                                Image(systemName: "heart")
                            }
                            Text("9")
                        }

                        Spacer()
                        
                        HStack(spacing: 5) {
                            Button {
                                // TODO: Add an action here...
                            } label: {
                                Image(systemName: "chart.bar.xaxis")
                            }
                            Text("4K")
                        }
                        
                        Spacer()
                        
                        HStack(spacing: 20) {
                            Button {
                                // TODO: Add an action here...
                            } label: {
                                Image(systemName: "bookmark")
                            }
                            
                            Button {
                                // TODO: Add an action here...
                            } label: {
                                Image(systemName: "square.and.arrow.up")
                            }
                        }
                    }
                    .padding(.top, 5)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
        Divider()
    }
}

#Preview {
    TweetsRowView()
}
