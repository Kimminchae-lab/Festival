//
//  ClassTableViewCell.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/12/21.
//

import UIKit

class ClassTableViewCell: UITableViewCell {
    var isUpdateConstraint: Bool = false
    
    var cellView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
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
            addSubview(cellView)
            cellView.addSubview(titleLable)
            cellView.addSubview(dateLabel)
            
            cellView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
            cellView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
            cellView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
            cellView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
            
            titleLable.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 10).isActive = true
            titleLable.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 10).isActive = true
            titleLable.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -10).isActive = true
            titleLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -67).isActive = true
            
            dateLabel.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 0).isActive = true
            dateLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 10).isActive = true
            dateLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -100).isActive = true
            dateLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
        }
        
        super.updateConstraints()
    }
    
}
