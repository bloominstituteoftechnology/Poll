//
//  Vote.swift
//  Poll
//
//  Created by Nikita Thomas on 10/4/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import Foundation

class Vote {
    var name: String
    var response: String
    
    init(name: String, response: String) {
        self.name = name
        self.response = response
    }
}
