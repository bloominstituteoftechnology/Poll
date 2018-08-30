//
//  VoteController.swift
//  Poll
//
//  Created by Moin Uddin on 8/30/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import Foundation

class VoteController {
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
    private (set) var votes: [Vote] = []
    
}
