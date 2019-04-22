//
//  Vote.swift
//  Poll
//
//  Created by Michael Redig on 4/22/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import Foundation

// the instructions technically say "class", but I think struct is more appropriate.
struct Vote {
	let name: String
	let response: String
	let timestamp: Date

	init(name: String, response: String, timestamp: Date = Date()) {
		self.name = name
		self.response = response
		self.timestamp = timestamp
	}
}
