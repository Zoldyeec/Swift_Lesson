//
//  ShoppingListViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 03.07.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit

class ShoppingListTableViewController: UITableViewController {
    
    var shoppingList: [String] = ["Apples", "Milk", "Beer", "Salad", "Steaks", "Orange Juice"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let shopName = shoppingList[indexPath.row]
        cell.textLabel?.text = shopName
        cell.imageView?.image = UIImage(named: shopName)
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row \(indexPath.item)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let cell = sender as? UITableViewCell
        let detailView = segue.destination as? ShoppingListDetailsViewController

        if (detailView != nil) {
            let index = tableView.indexPath(for: cell!)!
            let shopName = shoppingList[index.row]

            detailView?.selectedImage = UIImage(named: shopName)
            
        }
    }
}

