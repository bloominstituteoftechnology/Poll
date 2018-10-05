
import UIKit

class CombinedViewController: UIViewController {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
