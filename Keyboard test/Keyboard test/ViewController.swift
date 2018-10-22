//
//  ViewController.swift
//  Keyboard test
//
//  Created by Stephen McDiarmid on 22/10/2018.
//  Copyright © 2018 Stephen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var activeTextField = UITextField()
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var yearsOld: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.firstName.delegate = self
        self.lastName.delegate = self
        self.yearsOld.delegate = self
    
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.activeTextField = textField
        print("begin called")
        print(self.activeTextField.restorationIdentifier)
        print (self.activeTextField)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("end editing run")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(activeTextField)
        print(activeTextField.text!)
        textField.resignFirstResponder()
        return true
    }

}

