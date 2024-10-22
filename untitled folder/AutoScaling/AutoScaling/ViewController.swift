//
//  ViewController.swift
//  AutoScaling
//
//  Created by Batch - 2 on 14/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let rectangle = CGRect(x: 10, y: 100, width: 100, height: 100)
//        let myView = UIView(frame: rectangle)
//        
//        myView.backgroundColor = .systemRed
//        view.addSubview(myView)
        
        //First View
        
        let firstView = UIView()
        firstView.backgroundColor = .systemRed
        
        view.addSubview(firstView)
        firstView.translatesAutoresizingMaskIntoConstraints = false
        
        //Horizontally and vertically
        firstView.centerXAnchor
            .constraint(equalTo: view.centerXAnchor)
            .isActive = true
        
        firstView.centerYAnchor
            .constraint(equalTo: view.centerYAnchor)
            .isActive = true
        
        //Size constraint
        firstView.widthAnchor
            .constraint(equalToConstant: 100)
            .isActive = true
        
        firstView.heightAnchor
            .constraint(equalToConstant: 100)
            .isActive = true
        
        
        //Second View
        
        let secondView = UIView()
        secondView.backgroundColor = .systemRed
        
        view.addSubview(secondView)
        secondView.translatesAutoresizingMaskIntoConstraints = false
        
        //Size constraint
        secondView.widthAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
        
        secondView.heightAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
        
        //Location constraints
        secondView.centerXAnchor
            .constraint(equalTo: view.centerXAnchor)
            .isActive = true
        
        secondView.bottomAnchor
            .constraint(equalTo: firstView.topAnchor, constant: -10)
            .isActive = true
        
    
        //Third View
        let thirdView = UIView()
        thirdView.backgroundColor = .systemRed
        
        view.addSubview(thirdView)
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        
        //Size constraint
        thirdView.widthAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
        
        thirdView.heightAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
        
        //Location constraints
        thirdView.centerYAnchor
            .constraint(equalTo: view.centerYAnchor)
            .isActive = true
        
        thirdView.trailingAnchor
            .constraint(equalTo: firstView.leadingAnchor, constant: -10)
            .isActive = true
        
        
        //Third View
        let fourthView = UIView()
        fourthView.backgroundColor = .systemRed
        
        view.addSubview(fourthView)
        fourthView.translatesAutoresizingMaskIntoConstraints = false
        
        //Size constraint
        fourthView.widthAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
        
        fourthView.heightAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
        
        //Location constraints
        fourthView.centerYAnchor
            .constraint(equalTo: view.centerYAnchor)
            .isActive = true
        
        fourthView.leadingAnchor
            .constraint(equalTo: firstView.trailingAnchor, constant: +10)
            .isActive = true
        
        //Fifth View
        
        let fifthView = UIView()
        fifthView.backgroundColor = .systemRed
        
        view.addSubview(fifthView)
        fifthView.translatesAutoresizingMaskIntoConstraints = false
        
        //Horizontally and vertically
        fifthView.centerXAnchor
            .constraint(equalTo: view.centerXAnchor)
            .isActive = true
        
        fifthView.centerYAnchor
            .constraint(equalTo: view.centerYAnchor, constant: +10)
            .isActive = true
        
        //Size constraint
        fifthView.widthAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
        
        fifthView.heightAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
    }


}

