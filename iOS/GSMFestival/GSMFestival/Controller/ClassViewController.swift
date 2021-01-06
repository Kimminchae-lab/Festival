//
//  ClassViewController.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/18.
//

import UIKit

var classTitleItems = ["배움터지킴이 선생님 만족도 설문조사", "<신기술 취업 특강> 안내"]
var classDateItems = ["2020-12-16", "2020-12-22"]
var classTitleText = ""

class ClassViewController: UIViewController {
//    var isUpdateConstraint: Bool = false
//    var tableView: UITableView = {
//        let tableview = UITableView()
//        tableview.translatesAutoresizingMaskIntoConstraints = false
//        tableview.separatorStyle = .none
//        return tableview
//    }()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .black
        
        title = titleItem
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        updateViewConstraints()
    }
//
//    override func updateViewConstraints() {
//        if !isUpdateConstraint {
//            isUpdateConstraint = true
//
//            view.addSubview(tableView)
//
//            print("100")
//            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
//            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
//            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//        }
//        super.updateViewConstraints()
//    }
//
//    @objc func back() {
//        dismiss(animated: true, completion: nil)
//    }
}

extension ClassViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classTitleItems.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassTableViewCell", for: indexPath) as! ClassTableViewCell
        cell.titleLabel.text = classTitleItems[indexPath.row]
        cell.dateLabel.text = classDateItems[indexPath.row]
        print("gggg")
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        classTitleText = classTitleItems[indexPath.row]
//        let vc = ClassContentViewController()
//        navigationController?.pushViewController(vc, animated: true)
    }

}

