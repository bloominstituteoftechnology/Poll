//
//  CombinedViewController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Properties
    var voteController: VoteController?
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VotingSegue" || segue.identifier == "ResultsSegue" {
            guard let destinationVC = segue.destination as? VoteControllerProtocol else { return }
            destinationVC.voteController = voteController
        }
    }

}
