//
//  MainVC.swift
//  TelegramClone
//
//  Created by Слава Васильев on 18.01.2024.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        generateTabBar()
    }
    
    private func generateTabBar() {
        viewControllers = [generateVC(vc: ContactsVC(), title: "Contacts", image: UIImage(systemName: "person.crop.circle")),
                           generateVC(vc: ChatsVC(), title: "Chats", image: UIImage(systemName: "message.fill")),
                           generateVC(vc: SettingsVC(), title: "Settings", image: UIImage(systemName: "gear"))]
        
        tabBar.backgroundColor = .systemGroupedBackground
        self.selectedIndex = 1
    }
    
    private func generateVC(vc: UIViewController, title: String, image:UIImage?) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        return nav
    }

}

