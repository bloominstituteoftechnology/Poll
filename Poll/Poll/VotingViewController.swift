//
//  VotingViewController.swift
//  Poll
//
//  Created by Nikita Thomas on 10/4/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var responseField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        if let name = nameField.text, let response = responseField.text {
            voteController?.create(name: name, response: response)
        }
    }


}
