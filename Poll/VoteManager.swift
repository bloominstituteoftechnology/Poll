//
//  VoteManager.swift
//  Poll
//
//  Created by Lotanna Igwe-Odunze on 11/14/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

class VoteManager {
    var ballotBox: [Vote] = []
    
    
    func newVote(voter: String, ballot: String) {
        let submission = Vote(voter: voter, ballot: ballot)
        ballotBox.append(submission)
    }
}

var voteref = VoteManager()
