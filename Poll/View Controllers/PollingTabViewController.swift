//
//  PollingTabViewController.swift
//  Poll
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class PollingTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func passVoteControllerToChildViewControllers() {
        
        for childVC in childViewControllers {
            
            if let childVC = childVC as? VoteControllerProtocol {
                childVC.voteController = voteController
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

    let voteController = VoteController()
    
    
}
