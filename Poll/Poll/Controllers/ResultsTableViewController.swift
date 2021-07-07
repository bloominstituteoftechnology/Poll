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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultTableViewCell", for: indexPath)
        let vote = voteController?.votes[indexPath.row]
        
        cell.textLabel?.text = vote?.name
        cell.detailTextLabel?.text = vote?.response
        
        return cell
    }
}
