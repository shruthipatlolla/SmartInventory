//
//  ForgotPasswordViewController.swift
//  Smart Inventory
//
//  Created by Shruthi  Patlolla on 11/11/18.
//  Copyright © 2018 Jennaikode,Vamshi Raj. All rights reserved.
//

import UIKit


class ForgotPasswordViewController: UIViewController {

    let backendless = Backendless.sharedInstance()
    @IBOutlet weak var emailTF: UITextField!
    @IBAction func onSubmit(_ sender: Any) {
        
        let email = emailTF.text
        backendless?.userService.restorePassword(email)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
