//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Moses Robinson on 10/4/18.
//  Copyright © 2018 Moses Robinson. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    
    var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0 // VoteController.newVote.count
    }

    
    let reuseIdentifier = "cell"
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      

        return cell
    }
}
