//
//  FAListViewController.swift
//  FAHackDays
//
//  Created by Matt Beaney on 23/02/2021.
//

import UIKit

class FAListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var characters: [FACharacter] = []
    let characterService = CharacterService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableView()
        self.fetchCharacters()
    }

    private func fetchCharacters() {
        characterService.fetchCharacters { characters in

            DispatchQueue.main.async {

                self.characters = characters

                self.tableView.reloadData()
            }
        }
    }
    
    private func configureTableView() {
        let characterNib = UINib(nibName: "FACharacterCell", bundle: nil)
        tableView.register(characterNib, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension FAListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FACharacterCell
        let character = characters[indexPath.row]
        cell.configure(character: character)
        return cell
    }
}

extension FAListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = characters[indexPath.row]
        print(character)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let character = characters[indexPath.row]
        
        if character.name == "Neo" {
            return 150.0
        } else {
            return 75.0
        }
    }
}
