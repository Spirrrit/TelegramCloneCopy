//
//  ModelChatCell.swift
//  TelegramClone
//
//  Created by Слава on 23.01.2024.
//

import Foundation
import UIKit

struct Contact {
    
    var avatar: UIImage? = nil
    var name: String = ""
    var message: String = ""
    var time: String = ""
    var status: String = ""
    var statusImage: UIImage? = nil
    
    init(avatar: UIImage? = nil, name: String, message: String, time: String, status: String) {
        self.avatar = avatar
        self.name = name
        self.message = message
        self.time = time
        self.status = status
    }
    init(avatar: UIImage?, name: String,status: String){
        self.avatar = avatar
        self.name = name
        self.status = status
    }
  
}


struct Source {
    static func makeChats() -> [Contact]{
        [
            .init(avatar: UIImage(named: "Слава"), name: "Слава", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Дима"), name: "Дима", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Оля"), name: "Оля", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Женя"), name: "Женя", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Саша"), name: "Саша", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Кирилл"), name: "Кирилл", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Аня"), name: "Аня", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Кристина"), name: "Кристина", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Полина"), name: "Полина", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Маша"), name: "Маша", message: "Message", time: "00:00", status: "online"),
            .init(avatar: UIImage(named: "Андрей"), name: "Андрей", message: "Message", time: "00:00", status: "online"),
        ]
        
    }
    static func makeContacts() -> [Contact]{
        [
            .init(avatar: UIImage(named: "Слава"), name: "Слава", status: "online"),
            .init(avatar: UIImage(named: "Дима"), name: "Дима", status: "online"),
            .init(avatar: UIImage(named: "Оля"), name: "Оля", status: "online"),
            .init(avatar: UIImage(named: "Женя"), name: "Женя", status: "online"),
            .init(avatar: UIImage(named: "Саша"), name: "Саша", status: "online"),
            .init(avatar: UIImage(named: "Кирилл"), name: "Кирилл", status: "online"),
            .init(avatar: UIImage(named: "Аня"), name: "Аня", status: "online"),
            .init(avatar: UIImage(named: "Кристина"), name: "Кристина", status: "online"),
            .init(avatar: UIImage(named: "Полина"), name: "Полина", status: "online"),
            .init(avatar: UIImage(named: "Маша"), name: "Маша", status: "online"),
            .init(avatar: UIImage(named: "Андрей"), name: "Андрей", status: "online"),
   
        ]
        
    }
    
    
    
}

