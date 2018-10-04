import UIKit

class VoteController {
    
    var votes: [Vote] = []
    
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
 }
