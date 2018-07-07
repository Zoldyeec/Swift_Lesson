//
//  NumberGuess2ViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 13.06.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit

class NumberGuess2ViewController: UIViewController {
    
    @IBOutlet var guessText: UILabel!
    @IBOutlet var winText: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var guessButton: UIButton!
    @IBOutlet var cookie: UIImageView!
    @IBOutlet var giveUpButton: UIButton!
    
    @IBAction func giveUp(_ sender: Any) {
        giveUpButton.setTitle("\(randomNumber)", for: .normal)
    }
    
    var countAttempts = 0
    var randomNumber = 0
    var guessAgain = false
    var difference = 0
    
    @IBAction func startGuess(_ sender: UIButton) {
        
        if guessAgain {
            randomNumber = Int(arc4random_uniform(100))
            countAttempts = 0
            textField.text = ""
            
            guessButton.setTitle("guess", for: .normal)
            cookie.isHidden = true
            guessText.isHidden = false
            textField.isHidden = false
            winText.isHidden = true
            guessAgain = false
        }
        
        let num = Int(textField.text!)

        if num != nil {
            countAttempts += 1
            
            if randomNumber > num! {
                difference = randomNumber - num!;
            } else if randomNumber < num! {
                difference = num! - randomNumber;
            }
            
            let diff10 = Double(difference) / Double(randomNumber) <= 0.10
            let diff25 = Double(difference) / Double(randomNumber) <= 0.25
            
            if num == randomNumber {
                winText.text = "Congratulations! You won a cookie!\n\nTotal amount of your guesses: \(countAttempts)"
                guessButton.setTitle("Try again?", for: .normal)
                giveUpButton.setTitle("give up", for: .normal)
                cookie.isHidden = false
                winText.isHidden = false
                guessText.isHidden = true
                textField.isHidden = true
                guessAgain = true
                
            } else if diff10 {
                if num! > randomNumber {
                    guessText.text = "Hot! Try a smaller number."
                } else if num! < randomNumber {
                    guessText.text = "Hot! Try a greater number."
                    
                }
                
            } else if  diff25 {
                if num! > randomNumber {
                    guessText.text = "Warm! Try a smaller number."
                } else if num! < randomNumber {
                    guessText.text = "Warm! Try a greater number."
                    
                }
                
            } else {
                if num! > randomNumber {
                    guessText.text = "Cold! Try a smaller number."
                } else if num! < randomNumber {
                    guessText.text = "Cold! Try a greater number."
                    
                }
            }
            textField.text = ""
        } else {
            guessText.text = "Please enter a number\nbetween 0 and 100."
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guessText.text = "Guess the number\nbetween 0 and 100.\nHow many tries do you need?"
        randomNumber = Int(arc4random_uniform(100))
        cookie.isHidden = true
        winText.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
