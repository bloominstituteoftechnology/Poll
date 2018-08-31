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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
