//
//  SceneDelegate.swift
//  TelegramClone
//
//  Created by Слава Васильев on 17.01.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        self.window = window
        
        let nav = UINavigationController(rootViewController: LoginVC())
        
        window.rootViewController = nav
        window.makeKeyAndVisible()
        
    }
}

