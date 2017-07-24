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
    

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("\(digit) is touched")
        let textCurrentlyInDisplay = display.text!
        display.text = textCurrentlyInDisplay + digit
    }
    
    
}

