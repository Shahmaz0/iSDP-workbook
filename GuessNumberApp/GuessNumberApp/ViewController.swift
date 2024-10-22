//
//  ViewController.swift
//  GuessNumberApp
//
//  Created by Batch - 2 on 18/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func clearButtonHandler(_ sender: Any) {
        numberTextField.text = ""
        outputLabel.text = ""
    }
    
    
    @IBAction func buttonHAndler(_ sender: Any) {
        
        var number = Int(numberTextField.text!)
        var randomInt: Int = Int.random(in: 1...10)
        
        if number == randomInt {
            outputLabel.text = ("You guessed it correct")
        }else if number! < randomInt{
            outputLabel.text = ("You just guessed lessar!")
        }else{
            outputLabel.text = ("You just guessed lessar!")
        }
    }
    

}

