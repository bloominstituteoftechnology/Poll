//
//  VoteController.swift
//  Poll
//
//  Created by Nikita Thomas on 10/4/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import Foundation

class VoteController {
    
    var votes = [Vote]()
    
    func create(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
}
