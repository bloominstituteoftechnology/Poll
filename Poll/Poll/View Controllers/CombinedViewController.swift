//
//  CombinedViewController.swift
//  Poll
//
//  Created by Michael Redig on 4/22/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
	
	var voteController: VoteController?
	var dataSource: VotingDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		//FIXME: this is ugly but it works for now
		
		if segue.identifier == "VotingSegue" || segue.identifier == "ResultsSegue" {
			if let dest = segue.destination as? VoteControllerProtocol {
				dest.voteController = voteController
			}
		}
		
		// remnant from pre data source extraction
//		if let dest = segue.destination as? ResultsTableViewController {
//			voteController?.delegate = dest
//		}
		
		if let dest = segue.destination as? UITableViewController {
			dest.tableView.dataSource = dataSource
			NotificationCenter.default.addObserver(forName: NSNotification.Name("VotesUpdated"), object: nil, queue: nil) { [weak dest] (notification) in
				dest?.tableView.reloadData()
			}
//			dest.tableView
		}

	}
}
