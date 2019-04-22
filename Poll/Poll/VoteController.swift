//
//  VoteController.swift
//  Poll
//
//  Created by Michael Redig on 4/22/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import Foundation

class VoteController {
	
	private var _votes = [Vote]()
	var votes: [Vote] {
		return _votes
	}
	private var voters = Set<String>()
	
	func createNewVote(with name: String, andResponse response: String) {
		if !voters.contains(name) { // each person can only vote once!
			_votes.append(Vote(name: name, response: response))
			voters.insert(name)
		}
	}
}