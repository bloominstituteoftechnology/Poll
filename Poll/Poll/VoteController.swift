import UIKit

class VoteController {
    
    var votes: [Vote] = []
    
    
    func createNewVote(_ name: String, response: String) -> Vote {
        
        let newVote = Vote(name: name, response: response)
        votes.append(newVote)        
        return newVote
    }
}
