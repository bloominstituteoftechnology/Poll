//
//  ViewController.swift
//  Poll
//
//  Created by Lotanna Igwe-Odunze on 11/13/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import UIKit

class VoteScreen: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var voteInput: UITextField!
    
    
    
    @IBAction func submitVote(_ sender: UIButton) {
        
        guard let person = nameInput.text else { return }
        guard let selection = voteInput.text else { return }
        
        voteref.newVote(voter: person, ballot: selection)
        
        nameInput.text = ""
        voteInput.text = ""
        
    }
    
    
    
}

