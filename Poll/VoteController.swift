import UIKit

class VoteController {
    var votes: [Vote] = []
    
    func create(name: String, response: String) {
        
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
}
