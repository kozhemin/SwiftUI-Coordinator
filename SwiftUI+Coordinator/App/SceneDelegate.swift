//
//  SceneDelegate.swift
//  SwiftUI+Coordinator
//
//  Created by Егор Кожемин on 26.11.2022.
//

import SwiftUI
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    private let coordinator: Coordinator<AppRouter> = .init(startingRoute: .home)
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = coordinator.navigationController
        window?.makeKeyAndVisible()
        coordinator.start()
    }
}
