//
//  VoteController.swift
//  Poll
//
//  Created by Farhan on 8/30/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import Foundation

class VoteController{
    
    private(set) var votes: [Vote] = []
    
    func createVote (with voter: String, response: String){
        
        let vote = Vote(name: voter, response: response)
        
        votes.append(vote)
        
    }
    
    
}
