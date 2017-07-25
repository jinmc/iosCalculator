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
        let digit = sender.currentTitle!
//        print("\(digit) is touched")
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
                case "π":
                    displayValue = Double.pi
                case "√":
                    displayValue = sqrt(displayValue)
                case "c":
                    displayValue = 0
                    userIsInTheMiddleOfTyping = false
                default:
                    break
            }
        }
    }
    
    
}

