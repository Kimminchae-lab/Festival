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
        
        return label
    }()
    
    override func updateConstraints() {
        if !isUpdateConstraint {
            isUpdateConstraint = true
            
            addSubview(titleLable)
            
            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
            titleLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
            titleLable.rightAnchor.constraint(equalTo: rightAnchor, constant: 15).isActive = true
            titleLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 67).isActive = true
        }
        
        super.updateConstraints()
    }
    
}
