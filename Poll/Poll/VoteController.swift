//
//  VoteController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import Foundation

class VoteController {
    //Load the array with some example votes so I can test the sorting function
    private(set) var votes: [Vote] = [Vote(name: "Dillon", response: "Blue"), Vote(name: "Bill", response: "Red", date: Date(timeIntervalSinceNow: 60)), Vote(name: "Joe", response: "Green", date: Date(timeIntervalSinceNow: 120))]
    
    //Function to create new vote and append it to the array
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        
        votes.append(vote)
    }
    
    //Function to sort the array by timestamp
    func sortVotesByTime() {
        votes.sort { (vote1, vote2) -> Bool in
            return vote1.timestamp > vote2.timestamp
        }
    }
}
