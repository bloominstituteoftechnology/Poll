//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {

    //MARK: - Lifecycle Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Reload table view data when view is loaded
        voteController?.sortVotesByTime()
        tableView.reloadData()
        
    }
    
    // MARK: - Properties
    //Conform to Vote Controller Protocol
    var voteController: VoteController?

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Make sure the cell can be cast as a Result Table View Cell, and that there is a vote that correseponds to the index path.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath) as? ResultTableViewCell, let vote = voteController?.votes[indexPath.row] else { return UITableViewCell() }
        
        // Set the cell's vote property
        cell.vote = vote
        
        return cell
    }

}
