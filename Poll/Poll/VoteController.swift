//
//  VoteController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import Foundation

class VoteController {
    private(set) var votes: [Vote] = [Vote(name: "Dillon", response: "Blue"), Vote(name: "Bill", response: "Red"), Vote(name: "Joe", response: "Green")]
    
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        
        votes.append(vote)
    }
    
    func sortVotesByTime() {
        votes.sort { (vote1, vote2) -> Bool in
            return vote1.timestamp > vote2.timestamp
        }
    }
}
