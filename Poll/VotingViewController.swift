//
//  VotingViewController.swift
//  Poll
//
//  Created by Jason Modisett on 8/30/18.
//  Copyright © 2018 Jason Modisett. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitVote(_ sender: Any) {
        guard let name = nameTextField.text,
              let response = responseTextField.text else { return }
        
        voteController?.createVote(name: name, response: response)
        
        view.endEditing(true)
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    var voteController: VoteController?

}
