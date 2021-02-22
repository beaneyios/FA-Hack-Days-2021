//
//  ListViewController.swift
//  FAHackDays
//
//  Created by Matt Beaney on 22/02/2021.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var characters = [
        "Neo",
        "Morpheus",
        "Agent Smith",
        "Trinity",
        "Cypher",
        "The Oracle",
        "Tank",
        "Apoc",
        "Mouse",
        "Switch",
        "Dozer"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableView()
    }
    
    private func configureTableView() {
        let characterNib = UINib(nibName: "CharacterCell", bundle: nil)
        tableView.register(characterNib, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue the cell from the tableView, and cast it to a CharacterCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CharacterCell
        
        // Fetch the character that corresponds to the row the tableView is asking for.
        let character = self.characters[indexPath.row]
        
        // Configure the cell using the character we just fetched, and the function inside `CharacterCell` that we created.
        cell.configure(name: character)
        
        // Return the cell for the table view to lay out.
        return cell
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Fetch the character from the characters array.
        let character = characters[indexPath.row]
        
        // Print it out.
        print(character)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row % 2 == 0 {
            return 75.0
        } else {
            return 75.0
        }
        
    }
}
