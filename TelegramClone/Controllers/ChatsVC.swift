//
//  ViewController.swift
//  TelegramClone
//
//  Created by Слава Васильев on 17.01.2024.
//

import UIKit

class ChatsVC: UIViewController {

    let search = UISearchController()
    var contact = Source.makeChats()
    let tableView : UITableView = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        title = "Chats"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "square.and.pencil"), style: .done, target: self, action: #selector(addChatButonDidTaped))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Изм.", style: .plain, target: self, action: #selector(editChatButonDidTaped))
        
        navigationItem.searchController = search
        setupTableView()
        
        tableView.register(ChatCell.self, forCellReuseIdentifier: "ChatCell")
        tableView.dataSource = self
        tableView.delegate = self
//        tableView.rowHeight = 80
        
    }
    

    
    @objc func addChatButonDidTaped(){
        print("addButonDidTaped")
    }
    @objc func editChatButonDidTaped(){
        print("editButonDidTaped")
    }
    
    func setupTableView(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
extension ChatsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as? ChatCell
        else { fatalError("Cell") }
        cell.configureCell(contact: contact[indexPath.row])
        return cell
    }
}

extension ChatsVC: UITableViewDelegate {

}
