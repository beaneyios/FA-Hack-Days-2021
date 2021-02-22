//
//  LessonThreeViewController.swift
//  FAHackDays
//
//  Created by Wesley Lindsay on 22/02/2021.
//

import Foundation
import UIKit

class ExampleViewController: UIViewController {

    // MARK: IBOutlets

    @IBOutlet weak var messageLabel: UILabel!

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Called once when the view loads

        messageLabel.text = "What do you choose?"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Called each time the view is about to appear in the hierarchy
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Called each time the view appears in the hierarchy
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Called each time the view is about to be removed from the hierarchy
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Called each time the view is removed from the hierarchy
    }

    // MARK: - IBActions

    @IBAction func redPillButtonTapped(_ sender: Any) {
        messageLabel.text = "Red pill"
    }

    @IBAction func bluePillTapped(_ sender: Any) {
        messageLabel.text = "Blue pill"
    }
}
