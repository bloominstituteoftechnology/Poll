//
//  CombinedViewController.swift
//  Poll
//
//  Created by Nikita Thomas on 10/4/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
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
        if segue.identifier == "votingSegue" || segue.identifier == "resultsSegue" {
            if var viewDestination = segue.destination as? VoteControllerProtocol {
                viewDestination.voteController = voteController
            }
            
            
        }
        
    }

}
