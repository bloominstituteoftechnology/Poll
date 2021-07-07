//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Ilgar Ilyasov on 8/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        passVoteControllerToChildViewController()
    }

    let voteController = VoteController()
    
    func passVoteControllerToChildViewController() {
        
        guard let viewControllers = viewControllers.self else { return }
        
        for viewController in viewControllers {
            
            if let viewController = viewController as? VoteControlProtocol {
                
                viewController.voteController = voteController
            }
        }
    }
}
