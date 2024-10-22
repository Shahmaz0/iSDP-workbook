//
//  ViewController.swift
//  switchOnOff
//
//  Created by Batch - 2 on 09/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var `switch`: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func `switch`(_ sender: UISwitch) {
        if (sender.isOn) {
            print("Switch is ON")
        }else {
            print("Switch is OFF")
        }
    }
    
    @IBAction func buttonTap(_ sender: UIButton) {
        if sender.isEnabled{
            print("Button is tapped")
        }
    }
}

