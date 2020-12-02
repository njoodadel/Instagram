//
//  ViewController.swift
//  Instagram
//
//  Created by Njood on 16/04/1442 AH.
//

import UIKit
import Firebase
class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleLogin()
    }
    
    private func handleLogin(){
        if Auth.auth().currentUser == nil {
            //Show login screen
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present (loginVC, animated: false)
        }
    }


}

