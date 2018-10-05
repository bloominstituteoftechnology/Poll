//  Copyright © 2018 RNWolter. All rights reserved.

import UIKit

class PollingTabBarViewController: UITabBarController {
    
    
    let voteController = VoteController()

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
            
            guard let childVC = childVC as? VoteControllerProtocol else {return}
            childVC.voteController = voteController
            }
        }
    
}
