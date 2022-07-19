//
//  ViewController.swift
//  HEY
//
//  Created by Valery Keplin on 11.07.22.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var textLabel: CLTypingLabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Let's communicate!"
        rotateView(targetView: imageLabel)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goToRegistration":
            _ = segue.destination as! RegisterViewController
        case "goToLoginIn":
            _ = segue.destination as! LoginViewController
        default:
            _ = segue.destination as! RegisterViewController
        }
    }
    
    private func rotateView(targetView: UIView, duration: Double = 3) {
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            targetView.transform = targetView.transform.rotated(by: .pi)
        }) { finished in self.rotateView(targetView: targetView, duration: duration)
        }
    }
}
