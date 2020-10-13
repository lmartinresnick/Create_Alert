//
//  ViewController.swift
//  AlertProject37
//
//  Created by Luke Martin-Resnick on 9/22/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var confirmPasswordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signUpTapped(_ sender: Any) {
        
        if userNameTextfield.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username not found")
        } else if passwordTextfield.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password not found")
        } else if passwordTextfield.text != confirmPasswordTextfield.text {
            makeAlert(titleInput: "Error!", messageInput: "Passwords do not match")
        } else {
            makeAlert(titleInput: "Success!", messageInput: "User OK")
        }
            
            
            
//        let alert = UIAlertController(title: "Error!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
//
//        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
//            // button tapped
//            print("button tapped")
//
//        }
//        alert.addAction(okButton)
//        self.present(alert, animated: true, completion: nil)
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    

}

