//
//  PollingTabViewController.swift
//  Poll
//
//  Created by Diante Lewis-Jolley on 4/22/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class PollingTabViewController: UITabBarController {

    let voteController = VoteController()

    override func viewDidLoad() {
        super.viewDidLoad()

        passVoteControllerToChildViewControllers()
    }

    func passVoteControllerToChildViewControllers() {
        for childViewController in children {
            if let childViewController = childViewController as? VoteControllerProtocol {
                childViewController.voteController = voteController
            }

        }
    }



}
