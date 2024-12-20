//
//  AllExpansesTableViewController.swift
//  ExpanseTracker
//
//  Created by Shahmaz on 18/12/24.
//

import UIKit

class AllExpansesTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ExpanseDataController.shared.totalExpanses()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpanseTableViewCell", for: indexPath)
        
        let expanse = ExpanseDataController.shared.expanseAtIndex(index: indexPath.row)
        
        
        //take default config
        var content = cell.defaultContentConfiguration()
        
        //make config changes
        content.text = expanse.title
        content.secondaryText = "\(expanse.amount)"
        
        switch expanse.type {
        case .Food:
            content.image = UIImage(systemName: "fork.knife")
        case .Education:
            content.image = UIImage(systemName: "graduationcap.fill")
        case .house:
            content.image = UIImage(systemName: "House.fill")
        case .medical:
            content.image = UIImage(systemName: "medical.thermometer.fill")
        case .travel:
            content.image = UIImage(systemName: "Fork.knife")
        }
        
        //give back the configuration
        cell.showsReorderControl = true
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - Table View delegate
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        _ = ExpanseDataController.shared.deleteExpanseAtIndex(index: indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedExpanse = ExpanseDataController.shared.deleteExpanseAtIndex(index: sourceIndexPath.row)
        
        ExpanseDataController.shared.insertExpanseAt(index: destinationIndexPath.row, newExpanse: movedExpanse)
        
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        if indexPath.section == 0 && indexPath.row == 0 {
            return false
        }
        
        return true
    }
    
    
    //MARK: Data Passing

    @IBSegueAction func addEditExpanseSegueAction(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> AddEditExpanseTableViewController? {
        
        if let cell = sender as? UITableViewCell, let selectedIndexPath = tableView.indexPath(for: cell) {
            
            let expanseToBePasses = ExpanseDataController.shared.expanseAtIndex(index: selectedIndexPath.row)
            
            return AddEditExpanseTableViewController(coder: coder, expanse: expanseToBePasses)
        }
        return AddEditExpanseTableViewController(coder: coder, expanse: nil)
    }
    
    //MARK: - Unwinding
    
    @IBAction func unwindBackToAllExpanse(segue: UIStoryboardSegue) {
        if segue.identifier == "savingAndUnwinding" {
            let sourceVC = segue.source as! AddEditExpanseTableViewController
            
            guard let expansePassedBack = sourceVC.expanseAtAddEditTBVC else { return }
            
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                
                ExpanseDataController.shared.changeExpanseAt(index: selectedIndexPath.row, with: expansePassedBack)
                tableView.reloadRows(at: [selectedIndexPath], with: .automatic)
                
            } else {
                
                let newIndexPath = IndexPath(row: ExpanseDataController.shared.totalExpanses(), section: 0)
                ExpanseDataController.shared.appendExpanse(newExpanse: expansePassedBack)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            }
        }
    }
}
