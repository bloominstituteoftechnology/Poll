//
//  VotingViewController.swift
//  Poll
//
//  Created by Daniela Parra on 8/30/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func submitResponse(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else {return}
        
        voteController?.createVote(name: name, response: response)
        
        nameTextField.text = ""
        responseTextField.text = ""
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    var voteController: VoteController?
}
