//
//  ViewEventsTableViewCell.swift
//  MachineTest
//
//  Created by Ankit Pahwa on 04/07/20.
//  Copyright © 2020 Ankit Pahwa. All rights reserved.
//

import UIKit
protocol CollapsableCellDelegate {
    func selectedCell(index:Int, button: UIButton)
}
class ViewEventsTableViewCell: UITableViewCell {

    @IBOutlet weak var viewEvent: UIView!
    @IBOutlet weak var buttonShowDetail: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    
    var collapsableCellDelegate: CollapsableCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        viewEvent.layer.cornerRadius = 5
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func actionShowDetail(_ sender: UIButton) {
        collapsableCellDelegate?.selectedCell(index: sender.tag, button: sender)
    }
}
