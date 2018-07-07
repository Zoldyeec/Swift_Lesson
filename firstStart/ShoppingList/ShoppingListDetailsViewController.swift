//
//  ShoppingListDetailsViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 03.07.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit

class ShoppingListDetailsViewController: UIViewController {
    
    @IBOutlet var itemImage: UIImageView!

    var selectedImage = UIImage(named: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemImage.image = selectedImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
    }

}
