
import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "votingSegue" || segue.identifier == "resultsSegue" {
            if var viewDestination = segue.destination as? VoteControllerProtocol {
                viewDestination.voteController = voteController
            }
        }
    }
}
