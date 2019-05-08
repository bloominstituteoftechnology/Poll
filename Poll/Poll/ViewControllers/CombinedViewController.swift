//
//  CombinedViewController.swift
//  Poll
//
//  Created by Diante Lewis-Jolley on 4/22/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    


    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        if segue.identifier == "VotingSegue" {
            guard let VoteVC = segue.destination as? VoteViewController else { return }
            VoteVC.voteController = voteController

        } else {
            if segue.identifier == "ResultsSegue" {
                guard let ResultVC = segue.destination as? ResultsTableViewController else { return }
                ResultVC.voteController = voteController
            }
        }


    }


}
