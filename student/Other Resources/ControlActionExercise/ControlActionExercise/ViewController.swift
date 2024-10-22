//
//  ViewController.swift
//  ControlActionExercise
//
//  Created by Batch - 2 on 10/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setButtonTextTapped(_ sender: Any) {
        label.text = textField.text
        textField.text = ""
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = ""
    }
}

