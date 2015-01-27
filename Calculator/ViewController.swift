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
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        
        // adding the bang with remove optional
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        
        // print in console
        println("digit = \(digit)")
        
    }
    
    

}

