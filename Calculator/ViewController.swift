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
    
    var userIsInTheMiddleOfTypingANumber = false
    
    @IBAction func appendDigit(sender: UIButton) {
        
        // adding the bang with remove optional
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        
    }
    
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        switch operation {
            case "×":
            case "÷":
            case "+":
            case "−":
        }
    
    }
    
    
    // Need to initialize here.
    var operandStack = Array<Double>()
    
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(displayValue)
        println("operandStack = \(operandStack)")
        
        
    }
    
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
    
}

