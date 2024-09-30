//
//  TweetFilterViewModel.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-29.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case Tweets
    case Replies
    case Likes
    
    var title: String {
        switch self {
        case .Tweets: 
            return "Tweets"
        case .Replies:
            return "Replies"
        case .Likes:
            return "Likes"
        }
    }
}
