//
//  VotingDataSource.swift
//  Poll
//
//  Created by Michael Redig on 4/22/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import Foundation
import UIKit

class VotingDataSource: NSObject, UITableViewDataSource, VoteControllerProtocol {
	var voteController: VoteController?
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return voteController?.votes.count ?? 0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
			} else {
				cell.nameLabel.textColor = .black
				cell.responseLabel.textColor = .black
				cell.timestampLabel.textColor = .black
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
