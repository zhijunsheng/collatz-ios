//
//  ViewController.swift
//  Collatz
//
//  Created by Donald Sheng on 2018-07-31.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start(_ sender: Any) {
        guard let text = number.text, var num = Int(text) else {
            return
        }
        
        var resultString = ""
        
        resultString.append("\(num) → ")
        
        while num != 1 {
            if num % 2 == 0 {
                num = num/2
            } else {
                num = num * 3 + 1
            }
            resultString.append("\(num) → ")
        }
        result.text = resultString
    }
}
