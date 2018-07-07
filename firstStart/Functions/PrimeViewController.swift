//
//  PrimeViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 13.06.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit

class PrimeViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var resultText: UILabel!
    
    @IBAction func isPrime(_ sender: UIButton) {
        let number = Int(textField.text!)
        
        if number != nil {
            var isPrime = true
            
            if number == 1 {
                isPrime = false
                
            } else if number == 0 {
                isPrime = false
                
            } else if number! < 0 {
                isPrime = false
                
            } else if number != 2 && number != 1 && number != 0 {
                
                for i in 2..<number! - 1 {
                    if number! % i == 0 {
                        isPrime = false
                    }
                }
            }
            
            if isPrime == true {
                resultText.text = "Yes. \(number!) is a prime."
                
            } else {
                resultText.text = "No. \(number!) is not a prime."
                
            }
            
            if number! < 0 {
                resultText.text = "\(number!) is invalid."
            }
            
        } else {
            resultText.text = "Please enter a number in the box."
        }
        textField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultText.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}





