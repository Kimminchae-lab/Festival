//
//  ClassViewController.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/18.
//

import UIKit

class ClassViewController: UIViewController {

    var tableView: UITableView = {
        let tableview = UITableView()
        
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        

        view.backgroundColor = .gray
        title = titleItem
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}

extension ClassViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return
    }
    
    
}
