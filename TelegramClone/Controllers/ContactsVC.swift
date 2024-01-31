//
//  ContactsVC.swift
//  TelegramClone
//
//  Created by Слава Васильев on 17.01.2024.
//

import UIKit

class ContactsVC: UIViewController {

    let search = UISearchController()
    let contact = Source.makeContacts()
    let tableView : UITableView = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        title = "Contacts"
        setupTableView()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Сортировка", style: .plain, target: self, action: #selector(sortButtonDidTaped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addContactButonDidTaped))
        navigationItem.searchController = search

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ContactCell.self, forCellReuseIdentifier: "ContactCell")
        tableView.rowHeight = 50
        
    }
    
    @objc func sortButtonDidTaped(){
        print("sortButtonDidTaped")
    }
    @objc func addContactButonDidTaped(){
        print("addContactButonDidTaped")
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

extension ContactsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as? ContactCell
        else { fatalError("Cell") }
        cell.configureCell(contact: contact[indexPath.row])
        return cell
    }
}

extension ContactsVC: UITableViewDelegate {

}
