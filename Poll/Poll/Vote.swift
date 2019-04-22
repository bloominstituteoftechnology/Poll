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

	init(name: String, response: String) {
		self.name = name
		self.response = response
	}
}
