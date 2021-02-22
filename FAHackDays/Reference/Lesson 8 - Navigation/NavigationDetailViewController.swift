//
//  NavigationDetailViewController.swift
//  FAHackDays
//
//  Created by Matt Beaney on 22/02/2021.
//

import UIKit

class NavigationDetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailText: UILabel!
    
    var character: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let character = character {
            self.detailImage.image = UIImage(named: character)
            self.detailText.text = character
        }
    }
}
