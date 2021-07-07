import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    var voteController: VoteController?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var responseField: UITextField!
    
    
    @IBAction func submitButton(_ sender: Any) {
        if let name = nameField.text, let response = responseField.text {
            voteController?.createNewVote(name: name, response: response)
            
        }
    }
}
