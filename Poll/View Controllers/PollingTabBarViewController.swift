
import UIKit

class PollingTabBarViewController: UITabBarController {

    let voteController = VoteController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()
    }
    
    func passVoteControllerToChildViewControllers() {
        guard let viewControllers = self.viewControllers else { return }
        
        for v in viewControllers {
            if var viewController = v as? VoteControllerProtocol {
                viewController.voteController = self.voteController
            }
        }
    }
    
}
