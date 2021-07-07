import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    @IBAction func submitTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else { return }
        
        voteController?.createVote(name: name, response: response)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
