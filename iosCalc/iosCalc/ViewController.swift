//
//  ViewController.swift
//  iosCalc
//
//  Created by Jinmo on 7/24/17.
//  Copyright © 2017 Jinmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false

    @IBAction func touchDigit(_ sender: UIButton) {
        if let digit = sender.currentTitle {
//            print("\(digit) is touched")
            if userIsInTheMiddleOfTyping {
                let textCurrentlyInDisplay = display.text!
                display.text = textCurrentlyInDisplay + digit
            } else {
                display.text = digit
                userIsInTheMiddleOfTyping = true
            }
        }
//        let digit = sender.currentTitle!
//        print("\(digit) is touched")
//        if userIsInTheMiddleOfTyping {
//            let textCurrentlyInDisplay = display.text!
//            display.text = textCurrentlyInDisplay + digit
//        } else {
//            display.text = digit
//            userIsInTheMiddleOfTyping = true
//        }
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
        }
        if let result = brain.result {
            displayValue = result
        }
        
    }
    
    
}

