//
//  VotingViewController.swift
//  Poll
//
//  Created by Scott Bennett on 8/30/18.
//  Copyright © 2018 Scott Bennett. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var responseText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         
    }

 
    @IBAction func submitButton(_ sender: Any) {
        guard let name = nameText.text, let response = responseText.text else { return }
        voteController?.Create(with: name, response: response)
        nameText.text = ""
        responseText.text = ""
        
        
    }
    
}
