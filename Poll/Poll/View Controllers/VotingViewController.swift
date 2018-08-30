//
//  VotingViewController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    // MARK: - Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    //Conform to Vote Controller Protocol
    var voteController: VoteController?
    
    // MARK: - UI Methods
    @IBAction func submitResponse(_ sender: UIButton) {
        //Get the name and response text
        guard let name = nameTextField.text,
            let response = responseTextField.text,
            let voteController = voteController else { return }
        
        //Create a new vote with them
        voteController.createVote(name: name, response: response)
        
        //Clear text fields
        updateViews()
        
        //Dismiss software keyboard
        view.endEditing(true)
    }
    
    // MARK: - Utility Methods
    func updateViews() {
        nameTextField.text = ""
        responseTextField.text = ""
    }

}
