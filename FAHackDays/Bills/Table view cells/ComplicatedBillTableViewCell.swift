//
//  ComplicatedBillTableViewCell.swift
//  FAHackDays
//
//  Created by Matt Beaney on 24/02/2021.
//

import UIKit

class ComplicatedBillTableViewCell: UITableViewCell {

    @IBOutlet weak var referenceLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var dueValueLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(bill: Bill) {
        referenceLabel.text = bill.reference
        statusLabel.text = bill.status
        dueValueLabel.text = "£\(bill.due_value)"
        dateLabel.text = bill.due_date
        
        switch bill.status {
        case "Open":
            statusLabel.textColor = .orange
        case "Paid":
            statusLabel.textColor = .systemGreen
        case "Overdue":
            statusLabel.textColor = .red
        default:
            break
        }
    }
}
