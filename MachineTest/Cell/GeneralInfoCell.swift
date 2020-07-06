//
//  GeneralInfoCell.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import UIKit

class GeneralInfoCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.layer.cornerRadius = 6.0
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
