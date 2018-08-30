//
//  CombinedViewController.swift
//  Poll
//
//  Created by Daniela Parra on 8/30/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
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
