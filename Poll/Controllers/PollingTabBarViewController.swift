//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Scott Bennett on 8/30/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {
    
    let voteController = VoteController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passVoteControllerToChildViewControllers()
    }

    func passVoteControllerToChildViewControllers() {
        guard let childViewControllers = viewControllers else { return }
        
        for childVC in childViewControllers {
            guard let voteVC = childVC as? VoteControllerProtocol else { return }
            
            voteVC.voteController = voteController
        }
        
        
    }

}
