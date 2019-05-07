//
//  VoteController.swift
//  Poll
//
//  Created by Jonathan Ferrer on 4/22/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

import Foundation

class VoteController{
    var votes : [Vote] = []
    
    func createVote(with name: String, response: String){
        let vote = Vote(name: name, response: response)
        
        votes.append(vote)
        
    }
    
}
