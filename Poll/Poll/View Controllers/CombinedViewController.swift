//
//  CombinedViewController.swift
//  Poll
//
//  Created by Michael Redig on 4/22/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
	
	var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
		
		if segue.identifier == "VotingSegue" || segue.identifier == "ResultsSegue" {
			if let dest = segue.destination as? VoteControllerProtocol {
				dest.voteController = voteController
			}
		}
	}
}
