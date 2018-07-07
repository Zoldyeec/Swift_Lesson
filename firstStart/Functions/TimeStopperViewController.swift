//
//  TimeStopperViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 17.06.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit

class TimeStopperViewController: UIViewController {

    var timer = Timer()
    var count = 0
    
    @objc func updateTime() {
    count += 1
    time.text = "\(count)"
    }
    
    @IBOutlet var time: UILabel!
    
    @IBAction func pauseButton(_ sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func stopButton(_ sender: UIBarButtonItem) {
        timer.invalidate()
        count = 0
        time.text = "0"
    }
    
    @IBAction func playButton(_ sender: UIBarButtonItem) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTime), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
