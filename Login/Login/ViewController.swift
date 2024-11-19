//
//  ViewController.swift
//  Login
//
//  Created by Batch - 2 on 19/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var forgotPassword: UIButton!
    @IBOutlet var forgotUsername: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        }else{
            segue.destination.navigationItem.title = username.text
        }
    }
    
    
    
    @IBAction func forgotUsernameButtonTap(_ sender: Any) {
        
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordButtonTap(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: sender)
    }
}

