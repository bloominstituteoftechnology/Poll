//
//  PollingTabBarController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class PollingTabBarController: UITabBarController {

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Make sure all the Child View Controllers have access to the Vote Controller
        passVoteControllerToChildViewControllers()
        
        //Sort example votes
        voteController.sortVotesByTime()
    }

    // MARK: - Properties
    let voteController = VoteController()
    
    // MARK: - Utility Methods
    func passVoteControllerToChildViewControllers() {
        //Unwrap view controllers
        guard let viewControllers = self.viewControllers else { return }
        //Cycle through view controllers, confirm they conform to Vote Conroller Protocol, and set their Vote Controller
        for viewController in viewControllers {
            if let viewController = viewController as? VoteControllerProtocol {
                viewController.voteController = voteController
            }
        }
    }

}
