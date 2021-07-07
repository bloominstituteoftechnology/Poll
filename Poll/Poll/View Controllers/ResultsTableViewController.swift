//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Daniela Parra on 8/30/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath)

        let vote = voteController?.votes[indexPath.row]
        
        cell.textLabel?.text = vote?.name
        cell.detailTextLabel?.text = vote?.response

        return cell
    }

    var voteController: VoteController?
}
