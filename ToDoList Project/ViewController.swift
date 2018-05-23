//
//  ViewController.swift
//  ToDoList Project
//
//  Created by Jake Higgot on 5/16/18.
//  Copyright © 2018 Jake Higgott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let todo = toDoList{
            return todo.count } else {
            return 0
        }

      
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if let todo = toDoList {
            cell.textLabel?.text = todo[indexPath.row]
        }
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            toDoList?.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
        let completeToggleAction = UITableViewRowAction(style: .default, title: "Mark Complete/Incomplete") { (action, indexPath) in
            //Mark the task complete or incomplete
        }
        
        return [deleteAction, completeToggleAction]
    }


//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            toDoList?.remove(at: indexPath.row)
//            tableView.reloadData()
//        }
//    }
}

