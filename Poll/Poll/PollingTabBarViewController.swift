import UIKit

class PollingTabBarViewController: UITabBarController {

    let voteController = VoteController()
    
    func passVoteControllerToChildViewControllers() {
        for childVC in children {
            guard let childVC = childVC as? VoteControllerProtocol else { return }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passVoteControllerToChildViewControllers()
    }


}
