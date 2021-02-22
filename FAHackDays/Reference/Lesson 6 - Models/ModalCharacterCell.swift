//
//  ModalCharacterCell.swift
//  FAHackDays
//
//  Created by Matt Beaney on 22/02/2021.
//

import UIKit

class ModalCharacterCell: UITableViewCell {
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterImage: UIImageView!

    // Called by the ListViewController
    // to add the data to the cell.
    func configure(character: Character) {
        characterNameLabel.text = character.name
        characterImage.image = UIImage(named: character.name) // Can be found in Assets.xcassets.
    }
}
