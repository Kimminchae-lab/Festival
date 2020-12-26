//
//  CollectionViewCell.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/21.
//
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var teacherLabel: UILabel!
    
//    var isUpdateConstraint: Bool = false
//    var titleLable: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.lineBreakMode = .byCharWrapping
//        return label
//    }()
//
//    var teacherLable: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//
//
//    override func updateConstraints() {
//        if !isUpdateConstraint {
//            isUpdateConstraint = true
//
//            addSubview(titleLable)
//            addSubview(teacherLable)
//
//            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
//            titleLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
//            titleLable.rightAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
//            titleLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -119).isActive = true
//
//            teacherLable.topAnchor.constraint(equalTo: topAnchor, constant: 119).isActive = true
//            teacherLable.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
//            teacherLable.rightAnchor.constraint(equalTo: rightAnchor, constant: 50).isActive = true
//            teacherLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
//
//
//        }
//        super.updateConstraints()
//    }
}
