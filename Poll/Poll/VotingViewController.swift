//
//  VotingViewController.swift
//  Poll
//
//  Created by Farhan on 8/30/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitVote(_ sender: Any) {
        guard let name = nameField.text, let response = responseField.text else {return}
        
        voteController?.createVote(with: name, response: response)
        
        view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var responseField: UITextField!
    
    
}
