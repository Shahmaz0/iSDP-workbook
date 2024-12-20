//
//  AddEditExpanseTableViewController.swift
//  ExpanseTracker
//
//  Created by Shahmaz on 18/12/24.
//

import UIKit

class AddEditExpanseTableViewController: UITableViewController {
    
    @IBOutlet var expanseTitleTextField:UITextField!
    @IBOutlet var expanseAmountTextField:UITextField!
    @IBOutlet var typeOfExpanseSegmentedControl:UISegmentedControl!
    @IBOutlet var modeOfPaymentSegmentedControl:UISegmentedControl!
    
    var expanseAtAddEditTBVC: Expanse?
    
    init?(coder: NSCoder, expanse: Expanse?) {
        expanseAtAddEditTBVC = expanse
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateExpanseEntry()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateExpanseEntry()
    }

    fileprivate func updateExpanseEntry() {
        if let expanse = expanseAtAddEditTBVC {
            navigationItem.title = "Expanse"
            expanseTitleTextField.text = expanse.title
            expanseAmountTextField.text = "\(expanse.amount)"
            
            switch expanse.type {
            case .Food:
                typeOfExpanseSegmentedControl.selectedSegmentIndex = 0
            case .Education:
                typeOfExpanseSegmentedControl.selectedSegmentIndex = 1
            case .medical:
                typeOfExpanseSegmentedControl.selectedSegmentIndex = 2
            case .travel:
                typeOfExpanseSegmentedControl.selectedSegmentIndex = 3
            case .house:
                typeOfExpanseSegmentedControl.selectedSegmentIndex = 4
            }
            
            switch expanse.mode {
            case .card:
                modeOfPaymentSegmentedControl.selectedSegmentIndex = 0
            case .cash:
                modeOfPaymentSegmentedControl.selectedSegmentIndex = 1
            case .upi:
                modeOfPaymentSegmentedControl.selectedSegmentIndex = 2
            }
            
            
        } else {
            navigationItem.title = "New Expanse"
            print("Expanse is nil")
        }
    }
    
    
    // MARK: - Data Prep
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let expanseTitle = expanseTitleTextField.text ?? ""
        let expanseAmount = Int(expanseAmountTextField.text ?? "0") ?? 0
        
        var expanseType: TypeOfExpanse
        
        switch typeOfExpanseSegmentedControl.selectedSegmentIndex {
        case 0:
            expanseType = .Food
        case 1:
            expanseType = .Education
        case 2:
            expanseType = .medical
        case 3:
            expanseType = .travel
        default:
            expanseType = .house
        }
        
        var expanseMode: ModeOfPayment
        
        switch modeOfPaymentSegmentedControl.selectedSegmentIndex {
        case 0:
            expanseMode = .cash
        case 1:
            expanseMode = .card
        default:
            expanseMode = .upi
        }
        
        expanseAtAddEditTBVC = Expanse(title: expanseTitle, amount: expanseAmount, type: expanseType, mode: expanseMode)
    }
    
}
