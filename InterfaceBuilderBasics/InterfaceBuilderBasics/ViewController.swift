//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Batch - 2 on 17/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pressButtonHandle(_ sender: Any) {
        label.text = "This app Rocks!🤩"
    }
    
}

