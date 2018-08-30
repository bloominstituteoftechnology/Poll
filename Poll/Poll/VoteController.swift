//
//  VoteController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import Foundation

class VoteController {
    private(set) var votes: [Vote] = []
    
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        
        votes.append(vote)
    }
}
