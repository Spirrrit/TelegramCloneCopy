//
//  ContactsVC.swift
//  TelegramClone
//
//  Created by Слава Васильев on 17.01.2024.
//

import UIKit

class ContactsVC: UIViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    var contact = Source.makeContacts()
    var filterContact = [Contact]()
    let tableView : UITableView = .init()
    var isEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    var isFiltering: Bool {
        return !isEmpty && searchController.isActive
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        title = "Contacts"
        setupTableView()
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Сортировка", style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Сортировка", image: UIImage(systemName: ""), target: self, action: nil,menu: createMenu())
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addContactButon))
        
        
//        let timeSortAction = UIAction(title: "по времени захода"){  _ in
//
//        }
//        let nameSortAction = UIAction(title: "по имени") {  _ in
//
//        }
//        
//        let sortMenu = UIMenu(children: [timeSortAction, nameSortAction])
//        navigationItem.leftBarButtonItem?.menu = sortMenu
        


        

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ContactCell.self, forCellReuseIdentifier: "ContactCell")
        tableView.rowHeight = 50
        
        //setup SearchController
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        
        
    }
 
    
    func createMenu() -> UIMenu {
        
        var state = "checkmark"
        
        
        let menu = UIMenu(title: "", children: [
            UIAction(title: "по времени захода", image: UIImage(systemName: state)){ _ in },
            UIAction(title: "по имени", image: UIImage(systemName: state)){ _ in
                state = ""
            },
        ])
        
        return  menu
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    
    @objc func addContactButon(){
        print("addContactButonDidTaped")
        
        let nav = UINavigationController(rootViewController: CreateContactVC())
        present(nav, animated: true)
  
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
        if isFiltering {
            filterContact.count
        } else {
            contact.count
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as? ContactCell
        else { fatalError("Cell") }
        
        if isFiltering {
            cell.configureCell(contact: filterContact[indexPath.row])
        } else {
            cell.configureCell(contact: contact[indexPath.row])
        }
        
        
        return cell
    }
}

extension ContactsVC: UITableViewDelegate {

}

extension ContactsVC: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        searching(searchController.searchBar.text!)
    }
    private func searching(_ searchItem: String){
        filterContact = contact.filter({ (contact: Contact) in
            contact.name.lowercased().contains(searchItem.lowercased())
        })
        tableView.reloadData()
    }
    
    
}
