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
    
    var character: Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Safely unwrap the potentially nil `character` and set the outlets based on it.
        if let character = character {
            self.detailImage.image = UIImage(named: character.name)
            self.detailText.text = character.name
        }
    }
}
