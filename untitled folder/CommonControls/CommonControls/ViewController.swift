//
//  ViewController.swift
//  CommonControls
//
//  Created by Batch - 2 on 10/10/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var `switch`: UISwitch!
    @IBOutlet var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonHandler(_ sender: Any) {
        
        print(slider.value)
        if `switch`.isOn {
            print("Switch is ON")
        }else {
            print("Switch is OFF")
        }
        
    }
    
    @IBAction func textField(_ sender: UITextField) {
        if let string = sender.text{
            print(string)
        }
        sender.resignFirstResponder()
    }
}

