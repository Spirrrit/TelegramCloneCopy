//
//  CreateContactVC.swift
//  TelegramClone
//
//  Created by Слава Васильев on 07.02.2024.
//

import UIKit

class CreateContactVC: UIViewController {
    
    let avatar: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "k.circle.fill"))
        image.tintColor = .lightGray
        return image
    }()
    let lastNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Имя"
        textField.borderStyle = .none
        return textField
    }()
    
    let firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Фамилия"
        textField.borderStyle = .none
        return textField
    }()
    
    let phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Номер телефона"
        textField.borderStyle = .none
        textField.keyboardType = .phonePad
        textField.text = "+"
        textField.becomeFirstResponder()
        return textField
    }()
    let changeTypePhone: UIButton = {
        let button = UIButton()
        button.setTitle("сотовый", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return button
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Создать контакт"
        view.backgroundColor = .systemBackground
        setupUI()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Отмена", style: .plain, target: self, action: #selector(closeButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Создать", style: .done, target: self, action: #selector(addButton))
    }
    
    func setupUI(){
        
        [avatar, lastNameTextField, firstNameTextField, phoneNumberTextField, changeTypePhone].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
        
            avatar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            avatar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            avatar.heightAnchor.constraint(equalToConstant: 70),
            avatar.widthAnchor.constraint(equalToConstant: 70),
            
            lastNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160),
            
            firstNameTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 15),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160),
            
            phoneNumberTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 30),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 30),
            phoneNumberTextField.widthAnchor.constraint(equalToConstant: 150),
            
            changeTypePhone.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 30),
            changeTypePhone.trailingAnchor.constraint(equalTo: phoneNumberTextField.leadingAnchor, constant: -20),
            changeTypePhone.heightAnchor.constraint(equalToConstant: 30),
            changeTypePhone.widthAnchor.constraint(equalToConstant: 80),
           
            
        ])
    }
    

    @objc func closeButton(){
        
        dismiss(animated: true)
    }
    @objc func addButton(){
        dismiss(animated: true)
    }
    
    

}
