//
//  ViewController.swift
//  Collatz
//
//  Created by Donald Sheng on 2018-07-31.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateTapped(_ sender: Any) {
        let inputString = inputTextField.text!
        print(inputString)
        var inputInt = Int(inputString)!
        if inputInt == 0 {
            return
        }
        var resultString = ""
        resultString += " " + inputString
        while inputInt != 1 {
            var isEven = true
            if inputInt % 2 == 1 {
                isEven = false
            }
            if isEven == false {
                inputInt = 3 * inputInt + 1
                print(" -> \(inputInt)", terminator: "")
                resultString += " -> \(inputInt)"
            }
            if isEven == true {
                inputInt = inputInt / 2
                print(" -> \(inputInt)", terminator: "")
                resultString += " -> \(inputInt)"
                
            }
        }
        resultLabel.text = resultString
    }
    


}

