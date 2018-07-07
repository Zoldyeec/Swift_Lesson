//
//  ViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 13.06.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var textUser: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var doneButton: UIButton!
    @IBOutlet var startButton: UIButton!
    
    @IBAction func changeName(_ sender: UIButton) {
        let name = textField.text
        
        if (name?.isEmpty)! || name!.contains(" ") || name!.contains("/^[0-9]+$/") {
            textUser.text = "Sorry. Invalid input."

        } else {
            if name != nil {
                textUser.text = "Hello \(name!), let's get started!\n\nPress the start button."
                startButton.isHidden = false
                textField.isHidden = true
                doneButton.isHidden = true
                
            } else {
                textUser.text = "Sorry. Invalid input."
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

