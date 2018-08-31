//
//  VoteController.swift
//  Poll
//
//  Created by Scott Bennett on 8/30/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import Foundation

class VoteController {
    
    private(set) var votes: [Vote] = []

    func Create(with name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }

}

