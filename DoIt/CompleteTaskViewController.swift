//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Travis Farnsworth on 4/8/17.
//  Copyright © 2017 Travis Farnsworth. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task : Task = Task()
    var previousVC = TaskViewController()
    
    @IBOutlet weak var taskLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if task.important {
            taskLabel.text = "❗️ \(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
