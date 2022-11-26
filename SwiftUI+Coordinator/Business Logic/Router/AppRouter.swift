//
//  AppRouter.swift
//  SwiftUI+Coordinator
//
//  Created by Егор Кожемин on 26.11.2022.
//

import SwiftUI

public enum AppRouter: NavigationRouter {
    
    case home
    case profile
    case about
    
    public var transition: NavigationTranisitionStyle {
        switch self {
        case .home:
            return .push
        case .profile:
            return .push
        case .about:
            return .presentFullscreen
        }
    }
    
    @ViewBuilder
    public func view() -> some View {
        switch self {
        case .home:
            HomeView()
        case .profile:
            ProfileView()
        case .about:
            AboutView()
        }
    }
}
