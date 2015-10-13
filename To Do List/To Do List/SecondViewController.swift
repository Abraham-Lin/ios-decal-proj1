//
//  SecondViewController.swift
//  To Do List
//
//  Created by Abraham Lin on 10/12/15.
//  Copyright © 2015 Abraham Lin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var item: UITextField!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "YOU HAVE COMPLETED \(completed) TASKS "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItem(sender: AnyObject) {
        toDoList.append(item.text!)
        item.text = ""
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}

