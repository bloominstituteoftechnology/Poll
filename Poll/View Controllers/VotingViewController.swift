import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var response: UITextField!

    @IBAction func submitButton(_ sender: Any) {
        if let name = name.text, let response = response.text {
            voteController?.create(name: name, response: response)
        }
    }
}
