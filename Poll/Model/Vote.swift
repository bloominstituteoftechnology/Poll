//
//  Vote.swift
//  Poll
//
//  Created by Welinkton on 8/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

struct Vote {
    
    let name: String
    let response: String
    
    init(name: String, response: String){
        self.name = name
        self.response = response
    }
}
 
