//
//  VoteController.swift
//  Poll
//
//  Created by Daniela Parra on 8/30/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import Foundation

class VoteController {
    var votes: [Vote] = []
    
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
}
