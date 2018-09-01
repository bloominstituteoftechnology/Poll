//
//  CombinedViewController.swift
//  Poll
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "Results" {
            guard let resultsTVC = segue.destination as? ResultsTableViewController else {return}
            
            resultsTVC.voteController = voteController
            resultsTableViewController = resultsTVC
            
            
            
        } else if segue.identifier == "Voting"{
            
            guard let votingVC = segue.destination as? VotingViewController else {return}
            
            votingViewController = votingVC
        }
    }
    

    var voteController: VoteController?
    var resultsTableViewController:  ResultsTableViewController?
    var votingViewController: VotingViewController?
    
}
