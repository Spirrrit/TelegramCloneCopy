//
//  LoginVC.swift
//  TelegramClone
//
//  Created by Слава Васильев on 11.03.2024.
//

import UIKit

class LoginVC: UIViewController {
    
    let mainImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "TelephoneIcon")
        return image
    }()
    let mainTitle: UILabel = {
        let lable = UILabel()
        lable.font = .systemFont(ofSize: 26, weight: .semibold)
        lable.textColor = .black
        lable.text = "Телефон"
        return lable
    }()
    let subTitle: UILabel = {
        let lable = UILabel()
        lable.font = .systemFont(ofSize: 18)
        lable.numberOfLines = 2
        lable.textAlignment = .center
        lable.textColor = .black
        lable.text = "Проверьте код страны и введите свой номер телефона."
        return lable
    }()
    let changeRegionButton: UIButton = {
        let button = UIButton()
        button.setTitle("🇷🇺 Россия", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.systemGray6, for: .highlighted)
        return button
    }()
    let phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "000 000 000"
        textField.keyboardType = .phonePad
        textField.borderStyle = .none
        textField.font = .systemFont(ofSize: 18)
        return textField
    }()
    let regionTextField: UITextField = {
        let textField = UITextField()
        textField.text = "+7"
        textField.keyboardType = .phonePad
        textField.borderStyle = .none
        textField.font = .systemFont(ofSize: 18)
        return textField
    }()
    let syncContactLable: UILabel = {
        let lable = UILabel()
        lable.font = .systemFont(ofSize: 18)
        lable.textColor = .black
        lable.text = "Синхронизировать контакты"
        return lable
    }()
    let syncContactSwitch: UISwitch = {
        let switcher = UISwitch()
        switcher.isOn = true
        return switcher
    }()

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Далее", style: .done, target: self, action: #selector(rightBarButtonItem))
        
    }
    
    private func setupUI(){
        [mainImage, mainTitle, subTitle, changeRegionButton, phoneNumberTextField, regionTextField, syncContactLable, syncContactSwitch].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 125),
            mainImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImage.heightAnchor.constraint(equalToConstant: 100),
            mainImage.widthAnchor.constraint(equalToConstant: 100),
            
            mainTitle.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 20),
            mainTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            subTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            subTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            changeRegionButton.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 30),
            changeRegionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            regionTextField.topAnchor.constraint(equalTo: changeRegionButton.bottomAnchor, constant: 30),
            regionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            phoneNumberTextField.topAnchor.constraint(equalTo: changeRegionButton.bottomAnchor, constant: 30),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: regionTextField.trailingAnchor, constant: 30),
            
            syncContactLable.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 30),
            syncContactLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            syncContactSwitch.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 30),
            syncContactSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)

        ])
        
    }
    
    @objc func rightBarButtonItem(){        
        navigationController?.pushViewController(VerificationLoginVC(), animated: true)
        
        
    }
}
