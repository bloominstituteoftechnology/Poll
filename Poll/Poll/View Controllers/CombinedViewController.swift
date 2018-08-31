//
//  CombinedViewController.swift
//  Poll
//
//  Created by Daniela Parra on 8/30/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VotingView" {
            guard let votingVC = segue.destination as? VoteControllerProtocol else {return}
            votingVC.voteController = voteController
        } else if segue.identifier == "ResultsTable" {
            guard let resultsTVC = segue.destination as? VoteControllerProtocol else {return}
            resultsTVC.voteController = voteController
        }
    }
    
    var voteController: VoteController?
}
