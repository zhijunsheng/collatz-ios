import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var itf: UITextField!
    @IBOutlet weak var rtf: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showResult(_ sender: UIButton) {
        print("//  Created by Donald Sheng on 2018-07-31.")
        print(itf.text)
        
        
        /*
         
         let n = 23
         
         if n is even, the next number is n/2
         if n is odd, the next number is 3 * n + 1
         
         this is the famous Collatz Conjecture
         
         23 => 70 => 35 => 106 => 53 => 160 => 80 => 40 => 20 => 10 => 5 => 16 => 8 => 4 => 2 => 1 => 4 => 2 => 1
         

         
         
         */
    }
}
