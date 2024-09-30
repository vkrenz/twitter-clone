//
//  SideMenuViewModel.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-09-30.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case Profile
    case Lists
    case Bookmarks
    case Logout
    
    var title: String {
        switch self {
        case .Profile:
            return "Profile"
        case .Lists:
            return "Lists"
        case .Bookmarks:
            return "Bookmarks"
        case .Logout:
            return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .Profile:
            return "person"
        case .Lists:
            return "list.bullet"
        case .Bookmarks:
            return "bookmark"
        case .Logout:
            return "arrow.left.square"
        }
    }
}
