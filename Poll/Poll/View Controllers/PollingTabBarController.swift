//
//  PollingTabBarController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class PollingTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        passVoteControllerToChildViewControllers()
    }

    // MARK: - Properties
    let voteController = VoteController()
    
    func passVoteControllerToChildViewControllers() {
        guard let viewControllers = self.viewControllers else { return }
        for viewController in viewControllers {
            if let viewController = viewController as? VoteControllerProtocol {
                viewController.voteController = voteController
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
