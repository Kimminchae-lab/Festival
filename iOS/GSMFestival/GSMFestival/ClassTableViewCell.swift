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
    
    var dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 158/255, green: 160/255, blue: 161/255, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    override func updateConstraints() {
        if !isUpdateConstraint {
            isUpdateConstraint = true
            print("as")
            addSubview(titleLable)
            addSubview(dateLabel)
            
            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
            titleLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
            titleLable.rightAnchor.constraint(equalTo: rightAnchor, constant: 15).isActive = true
            titleLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -67).isActive = true
            
            dateLabel.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 0).isActive = true
            dateLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
            dateLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 200).isActive = true
            dateLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
        }
        
        super.updateConstraints()
    }
    
}
