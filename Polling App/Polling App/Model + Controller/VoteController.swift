//
//  VoteController.swift
//  Polling App
//
//  Created by Welinkton on 10/4/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class VoteController {
    var votes: [Vote] = []
    

    func create (name: String, response: String){

        let vote = Vote(name: name, response: response)
        
        votes.append(vote)
        
    }
    
    
}
