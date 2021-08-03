//
//  AddViewController.swift
//  ToDoPractice
//
//  Created by Ethar Hussein on 8/3/21.
//

import UIKit

class AddViewController: UIViewController {
    
    var previousViewController = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToDoTapped(_ sender: UIButton) {
        let toDo = ToDo()
        
        if titleTextField.text != nil {
            toDo.name = titleTextField.text!
            toDo.important = importantSwitch.isOn
        }
        previousViewController.toDos.append(toDo)
        previousViewController.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
