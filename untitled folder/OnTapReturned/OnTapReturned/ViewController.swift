//
//  ViewController.swift
//  OnTapReturned
//
//  Created by Batch - 2 on 10/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
}

