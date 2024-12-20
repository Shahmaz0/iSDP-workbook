//
//  AccountTableViewController.swift
//  ExpanseTracker
//
//  Created by Shahmaz on 20/12/24.
//

import UIKit

class AccountTableViewController: UITableViewController {

    @IBOutlet var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        totalAmountLabel.text = "\(ExpanseDataController.shared.allAmount())"
    }

    // MARK: - Table view data source
}
