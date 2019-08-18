//
//  ResultScreen.swift
//  Poll
//
//  Created by Lotanna Igwe-Odunze on 11/14/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

class ResultScreen: UITableViewController {
    
    //Set up the rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteref.ballotBox.count
    }
    
    //Set up the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pollCell", for: indexPath)
        
        cell.textLabel?.text = voteref.ballotBox[indexPath.row].voter
        cell.detailTextLabel?.text = voteref.ballotBox[indexPath.row].ballot
        
        return cell
    }
    
    //Swipe to Delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            voteref.ballotBox.remove(at: indexPath.row)
        }
    }
    
    //Reload the tableview to display the data
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
}
