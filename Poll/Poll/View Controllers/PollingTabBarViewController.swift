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
        // Do any additional setup after loading the view.
    }

    func passVoteControllerToChildViewControllers() {
        guard let viewControllers = viewControllers else {return}
        
        for childVC in viewControllers {
            guard let voteControllerVC = childVC as? VoteControllerProtocol else {return}
            voteControllerVC.voteController = voteController
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
    
    let voteController = VoteController()

}
