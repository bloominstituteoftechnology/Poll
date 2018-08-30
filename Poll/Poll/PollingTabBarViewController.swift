//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Farhan on 8/30/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {
    
    let voteController = VoteController()

    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()

        // Do any additional setup after loading the view.
    }
    
    func passVoteControllerToChildViewControllers() {
        
        for vc in childViewControllers{
            
            guard let vc = vc as? VoteControllerProtocol else {return}
            
            vc.voteController = voteController
            
        }
        
    }

}
