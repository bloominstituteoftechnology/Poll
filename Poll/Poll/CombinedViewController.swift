import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EmbedVotingPage" {
            if let viewController = segue.destination as? VoteControllerProtocol {
                viewController.voteController = voteController
            }
        } else if segue.identifier == "EmbedResultsTable" {
            if let viewController = segue.destination as? VoteControllerProtocol {
                viewController.voteController = voteController
            }
        }
    }
    
    
}
