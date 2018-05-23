//
//  addContollerViewController.swift
//  ToDoList Project
//
//  Created by Jake Higgot on 5/16/18.
//  Copyright © 2018 Jake Higgott. All rights reserved.
//

import UIKit

class addContollerViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPressed(_ sender: Any) {
        if textField.text != nil && textField.text != ""{
            toDoList?.append(textField.text!)
            textField.text = ""
            textField.placeholder = "Add more"
        }
        

        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
