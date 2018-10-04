import UIKit

class VoteController {
    var votes: [Vote] = []
    
    func Create(name: String, response: String) {
        
        let newVote = Vote(name: name, response: response)
        
    }
    
}
