//
//  Vote.swift
//  Poll
//
//  Created by Diante Lewis-Jolley on 4/22/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

struct Vote {

    var name: String
    var response: String

    init(name: String, response: String) {
        self.name = name
        self.response = response

    }
}
