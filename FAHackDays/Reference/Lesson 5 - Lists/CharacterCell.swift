//
//  CharacterCell.swift
//  FAHackDays
//
//  Created by Matt Beaney on 22/02/2021.
//

import UIKit

class CharacterCell: UITableViewCell {
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    
    /// Called by the ListViewController
    /// to add the data to the cell.
    func configure(name: String) {
        characterNameLabel.text = name
        characterImage.image = UIImage(named: name) // Can be found in Assets.xcassets.
    }
}

/// LESSON 6: Models
extension CharacterCell {
    /// Instead of configuring with a string, we now configure with a `Character` object.
    func configure(character: Character) {
        characterNameLabel.text = character.name
        characterImage.image = UIImage(named: character.name)
    }
}
