//  Copyright © 2018 RNWolter. All rights reserved.


import UIKit

class ResultsTableViewController: UITableViewController,VoteControllerProtocol {
    var voteController: VoteController?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func viewWillAppear(_ animated: Bool) {
       
        tableView.reloadData()
//        tableView.dataSource = self
//        tableView.delegate = self
    }
   

    //MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return voteController?.votes.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "votedCell", for: indexPath)
        let vote = voteController?.votes[indexPath.row]
        cell.textLabel?.text = vote?.name
        cell.detailTextLabel?.text = vote?.response

        return cell
    }
    


}
