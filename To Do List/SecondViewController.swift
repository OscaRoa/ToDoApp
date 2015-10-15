//
//  SecondViewController.swift
//  To Do List
//
//  Created by Oscar Roa on 10/15/15.
//  Copyright © 2015 Oscar Roa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var toDoItemTextField: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        
        if (toDoItemTextField.text != nil && toDoItemTextField.text != "") {
        
            toDoList.append(toDoItemTextField.text!)
        
            toDoItemTextField.text = ""
            
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            
        } else {
            
            toDoItemTextField.text = ""
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.toDoItemTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}

