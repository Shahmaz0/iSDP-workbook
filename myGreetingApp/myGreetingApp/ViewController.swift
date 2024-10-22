//
//  ViewController.swift
//  myGreetingApp
//
//  Created by Batch - 2 on 17/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myNameTextField: UITextField!
    @IBOutlet var myGreetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func myButtonHandler(_ sender: Any) {
        
        myGreetingLabel.text = "Hi, " + myNameTextField.text! + "! "
    }
    

}

