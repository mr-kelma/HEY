//
//  RegisterViewController.swift
//  HEY
//
//  Created by Valery Keplin on 12.07.22.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    //MARK: - Views
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    //MARK: - Actions
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
}

