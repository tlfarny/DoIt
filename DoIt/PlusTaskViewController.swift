//
//  PlusTaskViewController.swift
//  DoIt
//
//  Created by Travis Farnsworth on 4/7/17.
//  Copyright © 2017 Travis Farnsworth. All rights reserved.
//

import UIKit

class PlusTaskViewController: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        task.name = taskTextField.text
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop back
        navigationController!.popViewController(animated: true)
    }
}
