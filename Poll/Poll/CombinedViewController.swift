//
//  CombinedViewController.swift
//  Poll
//
//  Created by Moin Uddin on 8/30/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
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
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if( segue.identifier == "Voting") {
            guard let votingVC = segue.destination as? VotingViewController else { return }
            votingVC.voteController = voteController
            
        } else if ( segue.identifier == "Results") {
            guard let resultsVC = segue.destination as? ResultsTableViewController else { return }
            resultsVC.voteController = voteController
        }
    }
    var voteController: VoteController?


}
