//
//  ClassViewController.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/18.
//

import UIKit

class ClassViewController: UIViewController {
    var isUpdateConstraint: Bool = false
    var tableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        
        title = titleItem
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
    override func updateViewConstraints() {
        if !isUpdateConstraint {
            isUpdateConstraint = true
            
            view.addSubview(tableView)
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        }
        super.updateViewConstraints()
    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }
}

extension ClassViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ClassTableViewCell()
        cell.updateConstraintsIfNeeded()
        cell.titleLable.text = "13asefawefawefaewfr"
        print("gggg")
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
    
}
