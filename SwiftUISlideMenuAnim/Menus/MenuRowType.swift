//
//  MenuRowType.swift
//  SwiftUISlideMenuAnim
//
//  Created by Manu Aravind on 12/10/24.
//

import Foundation

enum MenuRowType: Int, CaseIterable{
    case home = 0
    case favorite
    case chat
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        case .chat:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "home"
        case .favorite:
            return "heart"
        case .chat:
            return "chat"
        case .profile:
            return "resume"
        }
    }
}
