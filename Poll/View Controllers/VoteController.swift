//
//  VoteController.swift
//  Poll
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class VoteController {
    
    func createVote(with name: String, response: String)  {
        
        let vote = Vote(name: name, response: response)
        
        votes.append(vote)
    }

    // This instance is calling the struct class Vote
    private(set) var votes: [Vote] = []

}
