//
//  Constants.swift
//  ToDoList Project
//
//  Created by Jake Higgot on 5/16/18.
//  Copyright © 2018 Jake Higgott. All rights reserved.
//

import Foundation

var toDoList: [String]?

func saveData(todoList:[String]) {
    UserDefaults.standard.set(todoList, forKey: "ToDoList")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "ToDoList") as? [String] {
        return todo
    }
    else {
       return nil
    }
}
