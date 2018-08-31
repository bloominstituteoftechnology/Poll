//
//  CombinedViewController.swift
//  Poll
//
//  Created by Scott Bennett on 8/30/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VotingView" {
            guard let votingVC = segue.destination as? VoteControllerProtocol else { return }
            votingVC.voteController = voteController
            
        }
        
    }


}
