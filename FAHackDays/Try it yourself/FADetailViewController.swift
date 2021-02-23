//
//  FADetailViewController.swift
//  FAHackDays
//
//  Created by Matt Beaney on 23/02/2021.
//

import UIKit

class FADetailViewController: UIViewController {
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    
    var character: FACharacter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.characterImage.image = UIImage(named: self.character.name)
        self.characterNameLabel.text = self.character.name
    }
}
