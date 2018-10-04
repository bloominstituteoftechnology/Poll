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
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
