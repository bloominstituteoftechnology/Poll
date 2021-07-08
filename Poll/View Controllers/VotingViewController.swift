//
//  VotingViewController.swift
//  Poll
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_: Set<UITouch>, with: UIEvent?){
        nameTextField.resignFirstResponder()
        responseTextField.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitResponse(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else {return}
        
        voteController?.createVote(with: name, response: response)
    
        
        
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
