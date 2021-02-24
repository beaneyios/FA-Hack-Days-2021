//
//  BillDetailViewController.swift
//  FAHackDays
//
//  Created by Matt Beaney on 24/02/2021.
//

import UIKit

class BillDetailViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var dueValueLabel: UILabel!
    @IBOutlet weak var referenceLabel: UILabel!
    
    var bill: Bill!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dateLabel.text = bill.due_date
        self.statusLabel.text = bill.status
        self.referenceLabel.text = bill.reference
        self.dueValueLabel.text = "£\(bill.due_value)"
        
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
