//
//  ChatCell.swift
//  TelegramClone
//
//  Created by Слава on 23.01.2024.
//

import UIKit

class ChatCell: UITableViewCell {
    
    var avatar: UIImageView = {
        var avatar = UIImageView()
        avatar.layer.masksToBounds = true
        avatar.layer.cornerRadius = 25
        return avatar
    }()
    var name: UILabel = {
        var lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return lable
    }()
    var message: UILabel = {
        var lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 14)
        lable.textColor = .lightGray
        return lable
    }()
    var time: UILabel = {
        var lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 12)
        lable.textColor = .lightGray
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
        [avatar, name, message, time].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
            
            NSLayoutConstraint.activate([
                avatar.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
                avatar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
                avatar.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
                avatar.heightAnchor.constraint(equalToConstant: 70),
                avatar.widthAnchor.constraint(equalToConstant: 70),
                
                name.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
                name.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10),
                name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50),
                
                message.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 5),
                message.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10),
                message.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50),
                
                time.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
                time.leadingAnchor.constraint(equalTo: name.trailingAnchor, constant: 5),
                time.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            ])
            
        
    }
    
    func configureCell(contact: Contact){
        avatar.image = contact.avatar
        name.text = contact.name
        message.text = contact.message
        time.text = contact.time
    }
    
}
