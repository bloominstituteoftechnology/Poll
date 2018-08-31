//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Daniela Parra on 8/30/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()
    }

    func passVoteControllerToChildViewControllers() {
        guard let viewControllers = viewControllers else {return}
        
        for childVC in viewControllers {
            guard let voteControllerVC = childVC as? VoteControllerProtocol else {return}
            voteControllerVC.voteController = voteController
        }
    }
    
    
    let voteController = VoteController()

}
