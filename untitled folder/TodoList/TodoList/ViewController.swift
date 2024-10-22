//
//  ViewController.swift
//  TodoList
//
//  Created by Batch - 2 on 09/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputTask: UITextField!
    @IBOutlet var ListOfTodosArea: UITextView!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ListOfTodosArea.text = ""
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AddTodo(_ sender: UIButton) {
        counter += 1
        if let todoText = inputTask.text{
            ListOfTodosArea.text! += "\(counter) \(todoText)\n"
            inputTask.text = ""
        }
    }
    
    
    @IBAction func removeTodo(_ sender: UIButton) {
        ListOfTodosArea.text = ""
        counter = 0
    }
    


}

