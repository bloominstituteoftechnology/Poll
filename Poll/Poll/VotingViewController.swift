//
//  VotingViewController.swift
//  Poll
//
//  Created by Yvette Zhukovsky on 10/4/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController {

    
    @IBOutlet weak var yourName: UITextField!
    
    @IBOutlet weak var yourResponse: UITextField!
    
    @IBOutlet weak var submit: UIButton!
    
    
    @IBAction func submit(_ sender: Any) {
/*var votes: [Vote] = []
 
 func Create(name: String, response:String) {
 
 let v = Vote(name:name, response:response)
 votes.append(v) */
        
        func createVote(

    }
    
    weak var voteController:VoteController?
    
    
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
