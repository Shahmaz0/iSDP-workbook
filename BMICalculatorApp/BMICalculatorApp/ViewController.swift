//
//  ViewController.swift
//  BMICalculatorApp
//
//  Created by Batch - 2 on 19/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputHeightField: UITextField!
    @IBOutlet var inputWeightField: UITextField!
    
    @IBOutlet var AnsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonHandler(_ sender: Any) {
        
        let height = Float(inputHeightField.text!)
        let weight = Float(inputWeightField.text!)
        
        
        let BMIHeight = pow(height!, 2)
        let BMI = (weight! / BMIHeight)
        let FormattedBMI = String(format: "%.2f", BMI)
        
        switch BMI {
            case    ..<18.5 :
                AnsLabel.text = "Underweight \(FormattedBMI)"
            case 18.5..<24.9:
                AnsLabel.text = "Normal Weight \(FormattedBMI)"
            case 25.0..<29.9:
                AnsLabel.text = "Overweight \(FormattedBMI)"
            default:
                AnsLabel.text = "Obese \(FormattedBMI)"
        }
    }
    

}

