//
//  MatrixViewController.swift
//  FAHackDays
//
//  Created by Wesley Lindsay on 23/02/2021.
//

import Foundation
import UIKit

class MatrixViewContoller: UIViewController {


    @IBOutlet weak var messageLabel: UILabel!

    @IBAction func redPillTapped(_ sender: Any) {
        messageLabel.text = "Red Pill"
    }

    @IBAction func bluePillTapped(_ sender: Any) {
        messageLabel.text = "Blue Pill"
    }

}
