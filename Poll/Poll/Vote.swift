//
//  Vote.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import Foundation

struct Vote {
    let name: String
    let response: String
    let timestamp: Date
    
    //Computed property that returns a string of the formatted timestamp
    var formattedTimestamp: String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        return dateFormatter.string(from: timestamp)
    }
    
    //Two separate initializers so I can make some example votes with manual timestamps, but automatically timestamp all created votes.
    init (name: String, response: String, date: Date) {
        self.name = name
        self.response = response
        self.timestamp = date
    }
    
    init (name: String, response: String) {
        self.name = name
        self.response = response
        self.timestamp = Date()
    }
}
