import Foundation
import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
  
  var voteController: VoteController?
  
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var responseTextField: UITextField!
  
  
  
  @IBAction func submitButtonTapped(_ sender: Any) {
    if let name = nameTextField.text, let response = responseTextField.text {
      voteController?.create(name: name, response: response)
    }
  }
}
