//
//  ViewController.swift
//  Smart Inventory
//
//  Created by Jennaikode,Vamshi Raj on 10/3/18.
//  Copyright © 2018 Jennaikode,Vamshi Raj. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    func display(title:String, msg:String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        
        if let userName = userNameTF.text , let password = passwordTF.text, !userName.isEmpty, !password.isEmpty {
            if !UsersRepo.users.isValid(userId: userName, password: password) {
                display(title: "Wrong details", msg: "Please enter correct ID and password")
            }
        } else {
            display(title: "Invalid Details", msg: "Please enter valid details")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

