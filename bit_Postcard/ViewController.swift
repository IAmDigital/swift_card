//
//  ViewController.swift
//  bit_Postcard
//
//  Created by kzobov on 06/11/14.
//  Copyright (c) 2014 IAmDigit.al. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var batLabel: UILabel!
    @IBOutlet weak var batID: UITextField!
    @IBOutlet weak var batMsg: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var batLab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func batFly(sender: UIButton) {
        batLabel.hidden = false;
        batLabel.text = batMsg.text;
        batLabel.textColor = UIColor.redColor();
        
        batMsg.text = "";
        batMsg.resignFirstResponder(); //keyboard disappear
        
        
        batLab.hidden = false;
        batLab.text = batID.text;
        batLab.textColor = UIColor.blueColor();
        batID.text = "";
            batID.resignFirstResponder(); //keyboard disappear
        
        
        mailButton.setTitle("Mail Sent Perfectly", forState: UIControlState.Normal);
    }

}

