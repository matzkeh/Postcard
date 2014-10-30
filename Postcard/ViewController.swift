//
//  ViewController.swift
//  Postcard
//
//  Created by Henrik Matzke on 30/10/14.
//  Copyright (c) 2014 Henrik Matzke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {

        // messageLabel.hidden = false
        // messageLabel.text?.extend("hi")
        // enterNameTextField.text = messageLabel.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        //mailButton.backgroundColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        // new comment
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField = ""
        nameLabel.backgroundColor = UIColor.purpleColor()
        nameLabel.alpha = 0.7
        enterNameTextField.resignFirstResponder()
    }

}

