//
//  ViewController.swift
//  Smart Inventory
//
//  Created by Jennaikode,Vamshi Raj on 10/3/18.
//  Copyright © 2018 Jennaikode,Vamshi Raj. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBAction func register(segue:UIStoryboardSegue){}
    @IBAction func cancel(segue:UIStoryboardSegue){}
    
    @IBAction func resetPassword(segue:UIStoryboardSegue){}
    @IBAction func cancelReset(segue:UIStoryboardSegue){}
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    
    func display(title:String, msg:String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        if let userName = userNameTF.text , let password = passwordTF.text, !userName.isEmpty, !password.isEmpty {
            Backendless.sharedInstance().userService.login(userName, password: password, response: { user in
                if self.rememberMeSwitch.isOn {
                    Backendless.sharedInstance().userService.setStayLoggedIn(true)
                }
                if user != nil {
                    self.performSegue(withIdentifier: "login", sender: user)
                }
            }, error: { fault in
                self.display(title: "Login failed", msg: "Please enter valid details")
                
            })
            
        } else {
            display(title: "Invalid Details", msg: "Please enter valid details")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "appbg.jpg")!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    
}

