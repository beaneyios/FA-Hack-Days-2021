//
//  CharacterService.swift
//  FAHackDays
//
//  Created by Wesley Lindsay on 23/02/2021.
//

import Foundation

class CharacterService {

    func fetchCharacters(completion: @escaping (([FACharacter]) -> Void)) {
        let url = URL(string: "https://beaneyios.github.io/characters.json")!

        let session = URLSession.shared

        let dataTask = session.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                completion([])
                return
            }

            guard let data = data else {
                completion([])
                return
            }


            do {
                let jsonDecoder = JSONDecoder()
                let decodableCharacters = try jsonDecoder.decode([FACharacter].self, from: data)

                completion(decodableCharacters)
            } catch let error {
                print(error.localizedDescription)
                completion([])
            }
        }

        dataTask.resume()
    }
}
