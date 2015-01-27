//
//  ViewController.swift
//  Calculator
//
//  Created by Joe Wagner on 1/26/15.
//  Copyright (c) 2015 Bangner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle
        println("digit = \(digit)")
        
    }
    
    

}

