//  Copyright © 2018 RNWolter. All rights reserved.

import Foundation


class VoteController {
    
    private(set) var votes =  [Vote]()
    
    
    
    func createVote(name: String, response: String){
        
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
    
    
}
