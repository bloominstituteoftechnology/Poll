//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Michael Redig on 4/22/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

/**
Not used so as to fulfill the extra challenge.
*/
class ResultsTableViewController: UITableViewController, VoteControllerProtocol {

	var voteController: VoteController?
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath) as! ResultTableViewCell
		
		let calendar = Calendar.current
		guard let vote = voteController?.votes[indexPath.row] else { fatalError() }
		cell.nameLabel.text = vote.name
		cell.responseLabel.text = vote.response
		
		let components = calendar.dateComponents([.day, .hour, .minute, .second, .month], from: vote.timestamp)
		
		cell.timestampLabel.text = "\(components.month!)/\(components.day!) \(components.hour!):\(components.minute!):\(components.second!)"
		
		if let bgColor = ColorStructDict.getColor(named: vote.response) {
			cell.backgroundColor = bgColor.uiColor
			if bgColor.isDarkColor {
				cell.nameLabel.textColor = .white
				cell.responseLabel.textColor = .white
				cell.timestampLabel.textColor = .white
			}
		} else {
			cell.backgroundColor = .white
			cell.nameLabel.textColor = .black
			cell.responseLabel.textColor = .black
			cell.timestampLabel.textColor = .black
		}
        // Configure the cell...

        return cell
    }

}

extension ResultsTableViewController: VoteControllerDelegate {
	func submittedVote(from voteController: VoteController) {
		tableView.reloadData()
	}
}
