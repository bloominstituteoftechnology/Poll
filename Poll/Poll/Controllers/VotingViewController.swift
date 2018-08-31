//
//  VotingViewController.swift
//  Poll
//
//  Created by Ilgar Ilyasov on 8/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControlProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @IBAction func submitButtonAction(_ sender: Any) {
        
        guard let name = nameTextField.text,
              let response = responseTextField.text else { return }
        
        voteController?.createVote(name: name, response: response)
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    var voteController: VoteController?

}
