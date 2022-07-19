//
//  LoginViewController.swift
//  HEY
//
//  Created by Valery Keplin on 12.07.22.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromLogInToChat"{
            _ = segue.destination as! ChatViewController
        }
    }
}
