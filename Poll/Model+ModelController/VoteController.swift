//
//  PollController.swift
//  Poll
//
//  Created by Jason Modisett on 8/30/18.
//  Copyright © 2018 Jason Modisett. All rights reserved.
//

import Foundation

class VoteController {
    
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
    var votes: [Vote] = []
    
}
