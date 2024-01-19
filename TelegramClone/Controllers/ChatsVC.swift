//
//  ViewController.swift
//  TelegramClone
//
//  Created by Слава Васильев on 17.01.2024.
//

import UIKit

class ChatsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        title = "Chats"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "square.and.pencil"), style: .done, target: self, action: #selector(addButonDidTaped))
        
    }
    
    @objc func addButonDidTaped(){
        print("addButonDidTaped")
    }
}

