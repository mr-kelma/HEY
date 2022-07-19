//
//  RegisterViewController.swift
//  HEY
//
//  Created by Valery Keplin on 12.07.22.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    @IBAction func registerPressed(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromRegictrationToChat"{
            _ = segue.destination as! ChatViewController
        }
    }
}
