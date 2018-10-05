import Foundation
import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {
  
  var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return voteController?.votes.count ?? 0
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
      let vote = voteController?.votes[indexPath.row]
      cell.textLabel?.text = vote?.name
      cell.detailTextLabel?.text = vote?.response
      
      return cell
    }
  
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillDisappear(animated)
      tableView.reloadData()
  }
}
