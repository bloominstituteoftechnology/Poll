//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Yvette Zhukovsky on 10/4/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    let voteController = VoteController ()
    
    func passVoteControllerToChildViewControllers (){
        
        guard self.viewControllers != nil
        else {return }
        
        for viewController in tabBarController?.viewControllers as! [UIViewController] {
            if let viewController = voteController as? VoteControllerProtocol {
                
            
        }
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


