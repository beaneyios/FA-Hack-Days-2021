//
//  SimpleBillTableViewCell.swift
//  FAHackDays
//
//  Created by Matt Beaney on 24/02/2021.
//

import UIKit

class SimpleBillTableViewCell: UITableViewCell {

    @IBOutlet weak var referenceLabel: UILabel!
    @IBOutlet weak var dueValueLabel: UILabel!
    
    func configure(bill: Bill) {
        self.referenceLabel.text = bill.reference
        self.dueValueLabel.text = "£\(bill.due_value)"
    }
}
