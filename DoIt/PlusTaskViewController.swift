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
    
//    var previousVC = 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        let task = Task(name: taskTextField.text!, important: importantSwitch.isOn)
    }
}
