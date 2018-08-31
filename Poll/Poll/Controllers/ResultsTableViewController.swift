//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Ilgar Ilyasov on 8/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControlProtocol {
  
    var voteController: VoteController?
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultTableViewCell", for: indexPath)
        let vote = voteController?.votes[indexPath.row]
        
        cell.textLabel?.text = vote?.name
        cell.detailTextLabel?.text = vote?.response
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
