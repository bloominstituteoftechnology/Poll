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
	let dataSource = VotingDataSource()

	override func viewDidLoad() {
        super.viewDidLoad()

		dataSource.voteController = voteController
		passVoteControllerToChildViewControllers()
    }
	
	func passVoteControllerToChildViewControllers() {
		guard let childControllers = viewControllers else { return }
		for child in childControllers {
			if let viewController = child as? VoteControllerProtocol {
				viewController.voteController = voteController
			}
			
			if let tableVC = child as? UITableViewController {
				tableVC.tableView.dataSource = dataSource
				NotificationCenter.default.addObserver(forName: NSNotification.Name("VotesUpdated"), object: nil, queue: nil) { [weak tableVC] (notification) in
					tableVC?.tableView.reloadData()
				}
			}
			
			if let combinedVC = child as? CombinedViewController {
				combinedVC.dataSource = dataSource
			}
		}
	}
}
