//  Copyright © 2018 RNWolter. All rights reserved.

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
 
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var osTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: Any) {
        guard let name = nameTextField.text,
            let os = osTextField.text else {return}
       
        voteController?.createVote(name: name,response: os)
    }
    
}
