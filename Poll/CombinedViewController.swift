//
//  CombinedViewController.swift
//  Poll
//
//  Created by Jason Modisett on 8/30/18.
//  Copyright © 2018 Jason Modisett. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Voting" {
            guard let destinationVC = segue.destination as? VoteControllerProtocol else { return }
            destinationVC.voteController = voteController
        } else if segue.identifier == "Results" {
            guard let destinationVC = segue.destination as? VoteControllerProtocol else { return }
            destinationVC.voteController = voteController
        }
    }
    
    var voteController: VoteController?

}
