//
//  ViewController.swift
//  Hello
//
//  Created by Batch - 2 on 09/10/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slider(_ sender: UISlider) {
        let currentValue = sender.value
        print(currentValue)
    }
    

}

