//
//  ClassTableViewCell.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/12/21.
//

import UIKit

class HomeClassTableViewCell: UITableViewCell {
    @IBOutlet weak var cellView: UIView! {
        didSet {
            cellView.layer.cornerRadius = 10
            cellView.layer.borderWidth = 1
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
