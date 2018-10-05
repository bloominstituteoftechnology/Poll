import UIKit

class PollingTabBarController: UITabBarController {

    let voteController = VoteController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func passVoteControllerToChildViewControllers() {
            
            guard let viewControllers = self.viewControllers else { return }
            for i in viewControllers {
                if var viewController = i as? VoteControllerProtocol {
                    viewController.voteController = self.voteController
                }
            }
        }
    }
}
