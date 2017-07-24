//
//  ViewController.swift
//  iosCalc
//
//  Created by Jinmo on 7/24/17.
//  Copyright © 2017 Jinmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("\(digit) is touched")
        
    }


}

