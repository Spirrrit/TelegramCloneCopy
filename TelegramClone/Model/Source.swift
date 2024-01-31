//
//  ModelChatCell.swift
//  TelegramClone
//
//  Created by Слава on 23.01.2024.
//

import Foundation
import UIKit

struct Contact {
    var avatar: UIImage?
    var name: String
    var message: String
    var time: String
    var status: String
}

struct Source {
    static func makeContacts() -> [Contact]{
        [
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(systemName: "person.circle.fill"), name: "Name", message: "Message", time: "00:00", status: "online"),
        ]
        
    }
}
