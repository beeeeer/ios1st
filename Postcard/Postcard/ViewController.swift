//
//  ViewController.swift
//  Postcard
//
//  Created by Adam Nowak on 29.05.2015.
//  Copyright (c) 2015 Adam Nowak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendEmailButtonPressed(sender: UIButton) {
        messageLabel.hidden=false
        messageLabel.text=enterMessageTextField.text
        nameLabel.hidden=false
        nameLabel.text=enterNameTextField.text
        messageLabel.textColor=UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        
    }
   

}

