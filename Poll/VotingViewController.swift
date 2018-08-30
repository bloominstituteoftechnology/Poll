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
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    var voteController: VoteController?

}
