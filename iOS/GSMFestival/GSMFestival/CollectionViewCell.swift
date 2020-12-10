//
//  CollectionViewCell.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/21.
//
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var teacherLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 8
        contentView.backgroundColor = .systemGray6
        titleLable.textColor = .red
        teacherLable.textColor = .black
    }
}
