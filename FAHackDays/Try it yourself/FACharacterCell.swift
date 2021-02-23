//
//  FACharacterCell.swift
//  FAHackDays
//
//  Created by Matt Beaney on 23/02/2021.
//

import UIKit

class FACharacterCell: UITableViewCell {

    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    
    func configure(character: FACharacter) {
        characterNameLabel.text = character.name
        characterImage.image = UIImage(named: character.name)
    }
}
