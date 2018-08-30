//
//  CombinedViewController.swift
//  Poll
//
//  Created by Farhan on 8/30/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?
    

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
        
        if segue.identifier == "VotingSegue" {
            
            guard let votingVC = segue.destination as? VoteControllerProtocol else {return}
            votingVC.voteController = voteController
            
            
        } else if segue.identifier == "ResultsSegue"{
        
            guard let resultsVC = segue.destination as? VoteControllerProtocol else {return}
            resultsVC.voteController = voteController
            
        }
        
        
        // Pass the selected object to the new view controller.
    }
    

}
