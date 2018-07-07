//
//  TableViewController.swift
//  firstStart
//
//  Created by Tu M. Nguyen on 26.06.18.
//  Copyright © 2018 Tu M. Nguyen. All rights reserved.
//

import UIKit
import MediaPlayer

class TableViewController: UITableViewController {

//    var bands = ["Beatles", "Queen", "Backstreet Boys"]
//
    override func viewDidLoad() {
        super.viewDidLoad()

//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//
//        MPMediaLibrary.requestAuthorization {(status) in
//            if status == .autorized {
//                let query = MPMediaQuery()
//                if let items = query.items {
//
//                    for item in query.items! {
//
//                        if let artist = item.artist {
//                            artists.insert(artist)
//
//                        }
//                    }
//                }
//            }
//        }
    }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
//
//        // MARK: - Table view data source
//
//        override func numberOfSections(in tableView: UITableView) -> Int {
//            // #warning Incomplete implementation, return the number of sections
//            return 1
//        }
//
//        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            // #warning Incomplete implementation, return the number of rows
//            return 3
//        }
//
//        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//            // Configure the cell...
//
//            cell.textLabel?.text = bands[indexPath.row]
//
//            return cell
//        }
//
//        /*
//         // Override to support conditional editing of the table view.
//         override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//         // Return false if you do not want the specified item to be editable.
//         return true
//         }
//         */
//
//        /*
//         // Override to support editing the table view.
//         override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//         if editingStyle == .delete {
//         // Delete the row from the data source
//         tableView.deleteRows(at: [indexPath], with: .fade)
//         } else if editingStyle == .insert {
//         // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//         }
//         }
//         */
//
//        /*
//         // Override to support rearranging the table view.
//         override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//         }
//         */
//
//        /*
//         // Override to support conditional rearranging of the table view.
//         override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//         // Return false if you do not want the item to be re-orderable.
//         return true
//         }
//         */
//
//        /*
//         // MARK: - Navigation
//
//         // In a storyboard-based application, you will often want to do a little preparation before navigation
//         */
//
//        //welche Zeile ist denn geklickt worden?
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////            let targetView = segue.destination as! WebViewController
////            let indexPath = self.tableView.indexPathForRow
////            let band = bands[(indexPath?.row)!]
////
////            targetView.bandName = band
////            // Get the new view controller using segue.destinationViewController.
////            // Pass the selected object to the new view controller.
//
//
//    if segue.identifier == "showDetail" {
//    if let indexPath = self.tableView.indexPathForSelectedRow {
//
//    let artist: String = Array(artists)[indexPath.row]
//    (segue.destination as! DetailViewController).detailItem = artist
//    }
//    }

}
