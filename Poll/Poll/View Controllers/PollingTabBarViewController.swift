//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Michael Redig on 4/22/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {
	
	let voteController = VoteController()

    override func viewDidLoad() {
        super.viewDidLoad()
		passVoteControllerToChildViewControllers()
    }
	
	func passVoteControllerToChildViewControllers() {
		guard let childControllers = viewControllers else { return }
		for child in childControllers {
			if let viewController = child as? VoteControllerProtocol {
				viewController.voteController = voteController
			}
		}
	}
}
