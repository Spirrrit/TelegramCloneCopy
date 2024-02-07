//
//  ContactCell.swift
//  TelegramClone
//
//  Created by Слава on 23.01.2024.
//

import UIKit

class ContactCell: UITableViewCell {

    var avatar: UIImageView = {
        var avatar = UIImageView()
        avatar.layer.masksToBounds = true
        avatar.layer.cornerRadius = 20
        return avatar
    }()
    var name: UILabel = {
        var lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return lable
    }()
    var status: UILabel = {
        var lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 12)
        lable.textColor = .systemBlue
        return lable
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        [avatar, name, status].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
            
            NSLayoutConstraint.activate([
                avatar.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
                avatar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
                avatar.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
                avatar.heightAnchor.constraint(equalToConstant: 40),
                avatar.widthAnchor.constraint(equalToConstant: 40),
                
                name.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
                name.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10),
                name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50),
                
                status.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 5),
                status.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10),
                status.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50),
                

            ])
            
        
    }
    
    func configureCell(contact: Contact){
        avatar.image = contact.avatar
        name.text = contact.name
        status.text = contact.status

    }
    
}
