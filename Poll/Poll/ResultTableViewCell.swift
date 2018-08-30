//
//  ResultTableViewCell.swift
//  Poll
//
//  Created by Dillon McElhinney on 8/30/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var responseLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    
    //Optional vote property that updated the view when it is set.
    var vote: Vote? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        //Check that there is a vote
        guard let vote = vote else { return }
        
        //Update the cell with the vote's properties
        nameLabel.text = "\(vote.name)  –"
        responseLabel.text = vote.response
        timestampLabel.text = vote.formattedTimestamp
    }
    
}
