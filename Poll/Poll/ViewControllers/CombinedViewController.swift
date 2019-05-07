//  Copyright © 2018 RNWolter. All rights reserved.

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol{
    
    var voteController: VoteController?
    var resultsTableViewController:  ResultsTableViewController?
    var votingViewController: VotingViewController?
    
    @IBOutlet weak var tableView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
//    override func viewWillAppear(_ animated: Bool) {
//        tableView.datasou
//    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "ResultsSegue" {
            guard let resultsVC = segue.destination as? VoteControllerProtocol else {return}
            
            resultsVC.voteController = voteController
            //resultsTableViewController = resultsVC
            
        } else if segue.identifier == "VotingSegue"{
            
            guard let votingVC = segue.destination as? VoteControllerProtocol else {return}
            
             votingVC.voteController = voteController
        }
    }
}
   


