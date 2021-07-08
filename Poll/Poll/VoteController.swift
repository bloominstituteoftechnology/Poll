//
//  VoteController.swift
//  Poll
//
//  Created by Yvette Zhukovsky on 10/4/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class VoteController: UIViewController {
    
}

var votes: [Vote] = []

func Create(name: String, response:String) {
    
    let v = Vote(name:name, response:response)
    votes.append(v)
    
    
    
    
}

