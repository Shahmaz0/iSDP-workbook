//
//  ViewController.swift
//  Light
//
//  Created by Batch - 2 on 19/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightButton: UIButton!
    
    var lightOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    fileprivate func updateUI() {
        if lightOn{
            view.backgroundColor = .white
        }else{
            view.backgroundColor = .black
        }
    }
    
    
    @IBAction func toggleButton(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    

}

