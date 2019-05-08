//
//  VoteController.swift
//  Poll
//
//  Created by Diante Lewis-Jolley on 4/22/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class VoteController {

    var votes: [Vote] = []

    func createVotes(name: String, response: String) {
        let newVote = Vote(name: name, response: response)

        votes.append(newVote)

    }
}
