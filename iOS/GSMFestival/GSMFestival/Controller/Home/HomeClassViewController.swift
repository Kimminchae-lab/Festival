//
//  HomeClassViewController.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/18.
//

import UIKit

var classTitleItems = ["배움터지킴이 선생님 만족도 설문조사", "<신기술 취업 특강> 안내"]
var classDateItems = ["2020-12-16", "2020-12-22"]
var classTitleText = ""

class HomeClassViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .black
        title = titleItem
    }
}

extension HomeClassViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classTitleItems.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeClassTableViewCell", for: indexPath) as! HomeClassTableViewCell
        cell.titleLabel.text = classTitleItems[indexPath.row]
        cell.dateLabel.text = classDateItems[indexPath.row]
        print("gggg")
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        classTitleText = classTitleItems[indexPath.row]
    }

}

