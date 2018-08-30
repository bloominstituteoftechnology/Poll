//
//  VotingViewController.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

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
        updateViews()
        
        view.endEditing(true)
    }
    
    func updateViews() {
        nameTextField.text = ""
        responseTextField.text = ""
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
