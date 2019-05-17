//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Nikita Thomas on 10/4/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    
    
    let voteController = VoteController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()
        
    }

    
    func passVoteControllerToChildViewControllers() {
        guard let viewControllers = self.viewControllers else {return}
        
        for v in viewControllers {
            if var viewController = v as? VoteControllerProtocol {
                viewController.voteController = self.voteController
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
