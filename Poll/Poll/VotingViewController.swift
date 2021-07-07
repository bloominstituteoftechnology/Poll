//
//  VotingViewController.swift
//  Poll
//
//  Created by Moin Uddin on 8/30/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else { return }
        voteController?.createVote(name: name, response: response)
        nameTextField.text = ""
        responseTextField.text = ""
    }
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    
    var voteController: VoteController?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
