//
//  ViewController.swift
//  Login
//
//  Created by MITBLR-CSE on 26/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    
    @IBOutlet var forgotUsernameButton: UIButton!
    
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let username =  self.userNameTextField.text
        
        segue.destination.navigationItem.title = username
        
        guard let sender =  sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }
            else if sender == forgotUsernameButton {
                segue.destination.navigationItem.title = "Forgot Username"
            }
        else{
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
    
    
    @IBAction func forgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "loginview", sender: sender)
        
        
        }
    
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "loginview", sender: sender)
    }
}

