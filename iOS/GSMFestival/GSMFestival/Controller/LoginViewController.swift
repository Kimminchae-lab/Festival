//
//  LoginViewController.swift
//  GSMFestival
//
//  Created by 조주혁 on 2020/12/31.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var idView: UIView! {
        didSet {
            idView.layer.cornerRadius = 4
            idView.layer.borderWidth = 1
        }
    }
    @IBOutlet weak var passwordView: UIView! {
        didSet {
            passwordView.layer.cornerRadius = 4
            passwordView.layer.borderWidth = 1
        }
    }
    @IBOutlet weak var doneBtn: UIButton! {
        didSet {
            doneBtn.layer.cornerRadius = 4
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func goMainPage(){
        guard let goMain = self.storyboard?.instantiateViewController(identifier: "MainPage") else { return }
        goMain.modalPresentationStyle = .fullScreen
        self.present(goMain, animated: true)
    }
    
    
    @IBAction func loginBtn(_ sender: Any) {
        goMainPage()
    }
    

}
