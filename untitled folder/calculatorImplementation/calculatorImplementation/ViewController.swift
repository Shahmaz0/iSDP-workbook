//
//  ViewController.swift
//  calculatorImplementation
//
//  Created by Batch - 2 on 16/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let stackView = UIStackView()
//        stackView.backgroundColor = .red
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView
            .translatesAutoresizingMaskIntoConstraints = false
        
        // Add the stack view to the main view
        view.addSubview(stackView)
        
        //Set constraints for stack view using anchor method
        stackView.topAnchor
            .constraint(equalTo: view.topAnchor)
            .isActive = true
        
        stackView.leadingAnchor
            .constraint(equalTo: view.leadingAnchor)
            .isActive = true
        
        stackView.bottomAnchor
            .constraint(equalTo: view.bottomAnchor)
            .isActive = true
        stackView.trailingAnchor
            .constraint(equalTo: view.trailingAnchor)
            .isActive = true
        
        // Create two views. topView, bottomView
        
        let topView = UIView()
//        topView.backgroundColor = .systemBlue
        
        let bottomView = UIView()
//        bottomView.backgroundColor = .systemGreenx
        
        //Add views to the stack view
        stackView.addArrangedSubview(topView)
        stackView.addArrangedSubview(bottomView)
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView.heightAnchor
            .constraint(equalTo: view.heightAnchor, multiplier: 0.66)
            .isActive = true
        stackView.distribution = .fill
        
        // Add the UILabel to the top view
        let label = UILabel()
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 30.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        topView.addSubview(label)
        
        // Add the bottom constraint and trailing constraints
        label.bottomAnchor
            .constraint(equalTo: topView.bottomAnchor, constant: -8)
            .isActive = true
        
        label.trailingAnchor
            .constraint(equalTo: topView.trailingAnchor, constant: -8)
            .isActive = true
        
        //Add vertcal stack in the botton view
        
        let innerStackView = UIStackView()
        innerStackView.axis = .vertical
        innerStackView.distribution = .fillEqually
        innerStackView.spacing = 1
        innerStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // add the abover innerStackView in the bottom view
        
        bottomView.addSubview(innerStackView)
        
        // Set constraints
        
        innerStackView.topAnchor
            .constraint(equalTo: bottomView.topAnchor, constant: 0)
            .isActive = true
        
        innerStackView.leadingAnchor
            .constraint(equalTo: bottomView.leadingAnchor, constant: 0)
            .isActive = true
        
        innerStackView.bottomAnchor
            .constraint(equalTo: bottomView.bottomAnchor, constant: 0)
            .isActive = true
        
        innerStackView.trailingAnchor
            .constraint(equalTo: bottomView.trailingAnchor, constant: 0)
            .isActive = true
        
        // now add horizontal stack
        let topHorizontalStackView = UIStackView()
        topHorizontalStackView.axis = .horizontal
        topHorizontalStackView.distribution = .fillEqually
        topHorizontalStackView.spacing = 1
        topHorizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        
        innerStackView.addArrangedSubview(topHorizontalStackView)
        
        let clearButton = UIButton(type: .system)
        let plusMinusButton = UIButton(type: .system)
        let modulusButton = UIButton(type: .system)
        let divideButton = UIButton(type: .system)
        
        
        clearButton.setTitle("Clear", for: .normal)
        clearButton.backgroundColor = .darkGray
        clearButton.tintColor = .black
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        topHorizontalStackView.addArrangedSubview(clearButton)
        
        plusMinusButton.setTitle("+/-", for: .normal)
        plusMinusButton.backgroundColor = .darkGray
        plusMinusButton.tintColor = .black
        plusMinusButton.translatesAutoresizingMaskIntoConstraints = false
        topHorizontalStackView.addArrangedSubview(plusMinusButton)
        
        modulusButton.setTitle("%", for: .normal)
        modulusButton.backgroundColor = .darkGray
        modulusButton.tintColor = .black
        modulusButton.translatesAutoresizingMaskIntoConstraints = false
        topHorizontalStackView.addArrangedSubview(modulusButton)
        
        divideButton.setTitle("/", for: .normal)
        divideButton.backgroundColor = .systemRed
        divideButton.tintColor = .black
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        topHorizontalStackView.addArrangedSubview(divideButton)
        
        
        let firstStackView = createHorizontalStackView(buttonTitle: ["7", "8", "9", "x"])
        innerStackView.addArrangedSubview(firstStackView)
        let secondStackView = createHorizontalStackView(buttonTitle: ["4", "5", "6", "-"])
        innerStackView.addArrangedSubview(secondStackView)
        let thirdStackView = createHorizontalStackView(buttonTitle: ["1", "2", "3", "+"])
        innerStackView.addArrangedSubview(thirdStackView)
        let fourthStackView = UIStackView()
        fourthStackView.axis = .horizontal
        fourthStackView.distribution = .fillProportionally
        fourthStackView.spacing = 1
        fourthStackView.translatesAutoresizingMaskIntoConstraints = false

        // Add '0' button which takes twice the space
        let zeroButton = UIButton(type: .system)
        zeroButton.setTitle("0", for: .normal)
        zeroButton.backgroundColor = .lightGray
        zeroButton.tintColor = .black
        zeroButton.translatesAutoresizingMaskIntoConstraints = false

        // Add '0' button to a horizontal stack view and set its width
        fourthStackView.addArrangedSubview(zeroButton)
        // twice of other buttons
        zeroButton.widthAnchor.constraint(equalTo: fourthStackView.widthAnchor, multiplier: 0.5).isActive = true

        // Create another horizontal stack view for '.' and '=' buttons
        let dotEqualStackView = UIStackView()
        dotEqualStackView.axis = .horizontal
        dotEqualStackView.distribution = .fillEqually
        dotEqualStackView.spacing = 1
        dotEqualStackView.translatesAutoresizingMaskIntoConstraints = false

        let dotButton = UIButton(type: .system)
        dotButton.setTitle(".", for: .normal)
        dotButton.backgroundColor = .lightGray
        dotButton.tintColor = .black
        dotButton.translatesAutoresizingMaskIntoConstraints = false
        dotEqualStackView.addArrangedSubview(dotButton)

        let equalsButton = UIButton(type: .system)
        equalsButton.setTitle("=", for: .normal)
        equalsButton.backgroundColor = .red
        equalsButton.tintColor = .black
        equalsButton.translatesAutoresizingMaskIntoConstraints = false
        dotEqualStackView.addArrangedSubview(equalsButton)

        // Add the dotEqualStackView to the fourthStackView
        fourthStackView.addArrangedSubview(dotEqualStackView)

        // Add the modified fourth stack view to the inner stack view
        innerStackView.addArrangedSubview(fourthStackView)

    }
    
    func createHorizontalStackView(buttonTitle: [String]) -> UIStackView {
        let horizontalStackView = UIStackView()
        horizontalStackView.axis = .horizontal
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.spacing = 1
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        
        for title in buttonTitle {
            let button = UIButton(type: .system)
            button.setTitle(title, for: .normal)
            button.backgroundColor = title == "x" || title == "-" || title == "+" || title == "=" || title == "Clear" ? .red : .lightGray
            button.tintColor = .black
            button.translatesAutoresizingMaskIntoConstraints = false
            horizontalStackView.addArrangedSubview(button)
        }
        
        
        return horizontalStackView
    }


}

