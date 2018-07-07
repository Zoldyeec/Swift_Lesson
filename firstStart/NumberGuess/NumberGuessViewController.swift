//
//  NumberGuessViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 13.06.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit

class NumberGuessViewController: UIViewController {

    @IBOutlet var textNum: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var guessButton: UIButton!
    @IBOutlet var cookie: UIImageView!
    @IBOutlet var skull: UIImageView!
    
    let maxValueInclusive = 10;
    var countAttempt = 5
    var randomValue = 0
    var guessAgain = false
    
    @IBAction func startGuess(_ sender: UIButton) {
        
        if guessAgain {
            textNum.text = "Try to guess my number in the range between 0 and 10.\n\nYou have 5 attempts."
            countAttempt = 5
            textField.text = ""

            guessButton.setTitle("guess", for: .normal)
            randomValue = Int(arc4random_uniform(10))
            guessButton.isHidden = false
            textField.isHidden = false
            guessAgain = false
            cookie.isHidden = true
            skull.isHidden = true
        }

        let value = Int(textField.text!)
        
        if value != nil {
            
            if value! > maxValueInclusive {
                textNum.text = "Out of range. Please enter a smaller number."
                    
                } else if value! < 0 {
                    textNum.text = "Out of range. Please enter a greater number."
                    
            }
            textField.text = ""
            
            if countAttempt <= 0 {
                textNum.text = "Game Over. \n\nYou have \(countAttempt) attempts.\nThe number is \(randomValue)."
                guessButton.setTitle("Try again?", for: .normal)
                textField.text = "0"
                textField.isHidden = true
                guessAgain = true
                skull.isHidden = false
                
            } else {
                countAttempt -= 1

                if value! == randomValue {
                    textNum.text = "Congratulations! You won a cookie!"
                    guessButton.setTitle("Try again?", for: .normal)
                    cookie.isHidden = false
                    textField.isHidden = true
                    guessAgain = true
                    
                } else if value! < randomValue {
                    textNum.text = "Your number is way too low. \n\nYou have \(countAttempt) attempts."
                    
                } else if value! > randomValue {
                    textNum.text = "Your number is way too high. \n\nYou have \(countAttempt) attempts."
                    
                }
            }
            textField.text = ""
            
        } else {
            textNum.text = "Please enter a number between 0 and 10."
            textField.text = ""
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textNum.text = "Try to guess my number\nbetween 0 and 10.\n\nYou have 5 attempts."
        randomValue = Int(arc4random_uniform(10))
        cookie.isHidden = true
        skull.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
