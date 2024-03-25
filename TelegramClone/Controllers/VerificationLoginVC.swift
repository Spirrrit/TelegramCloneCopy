//
//  VerificationLoginVC.swift
//  TelegramClone
//
//  Created by Слава Васильев on 15.03.2024.
//

import UIKit

class VerificationLoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Далее", style: .done, target: self, action: #selector(rightBarButtonItem))
        self.navigationController?.navigationBar.backItem?.title = "Anything Else"
    }
    
    @objc func rightBarButtonItem(){
        print("rightBarButtonItem")
    }
}
