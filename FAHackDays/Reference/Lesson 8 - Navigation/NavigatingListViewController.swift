//
//  NavigatingListViewController.swift
//  FAHackDays
//
//  Created by Matt Beaney on 22/02/2021.
//

import UIKit

class NavigatingListViewController: UIViewController {
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

extension NavigatingListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CharacterCell
        let character = self.characters[indexPath.row]
        cell.configure(name: character)
        return cell
    }
}

extension NavigatingListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Fetch the character from the characters array.
        let character = characters[indexPath.row]
                
        // Initialise the storyboard object where we will get the detail view controller from.
        let storyboard = UIStoryboard(name: "Lesson8", bundle: nil)
        
        // Use the storyboard to initialise the detail view controller.
        let detailViewController = storyboard.instantiateViewController(identifier: "NavigationDetailViewController") as! NavigationDetailViewController
        
        // Set the character object on the view controller (we'll use this later).
        detailViewController.character = character
        
        // Set the title (this appears in the navigation bar).
        detailViewController.title = character
        
        // Use the navigation controller that this
        // VC was embedded in to "push" the detail view controller.
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65.0
    }
}
