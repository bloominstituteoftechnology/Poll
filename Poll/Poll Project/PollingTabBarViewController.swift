//
//  PollingTabBarViewController.swift
//  Poll Project
//
//  Created by Jonathan Ferrer on 4/23/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {
    
    
    let voteController: VoteController
    
    
    func passVoteToChildViewController(){
        
        
        
    }
    
    init(voteController: VoteController) {
        self.voteController = voteController
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
