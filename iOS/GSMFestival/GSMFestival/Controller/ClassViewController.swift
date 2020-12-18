//
//  ClassViewController.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/11/18.
//

import UIKit

class ClassViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        

        view.backgroundColor = .gray
        title = titleItem
        
        
        
    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
