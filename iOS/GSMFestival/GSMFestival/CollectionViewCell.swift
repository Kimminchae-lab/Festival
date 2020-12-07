//
//  CollectionViewCell.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/21.
//
import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var titleLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 8
        contentView.backgroundColor = .gray
        titleLable.textColor = .blue
    }
}
