//
//  FirstViewController.swift
//  To Do List
//
//  Created by Oscar Roa on 10/15/15.
//  Copyright © 2015 Oscar Roa. All rights reserved.
//

import UIKit

var toDoList = [String]()       //ToDoList array global for both views

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDoList.count
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

