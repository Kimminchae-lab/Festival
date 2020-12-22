//
//  ClassTableViewCell.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/12/21.
//

import UIKit

class ClassTableViewCell: UITableViewCell {
    var isUpdateConstraint: Bool = false
    
    var titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "jeasungLEE"
        label.textColor = UIColor(red: 158/255, green: 160/255, blue: 161/255, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    
    override func updateConstraints() {
        if !isUpdateConstraint {
            isUpdateConstraint = true
            print("as")
            addSubview(titleLable)
            
            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
            titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
            titleLable.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 15).isActive = true
            titleLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -67).isActive = true
        }
        
        super.updateConstraints()
    }
    
}
