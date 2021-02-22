//
//  CharactersController.swift
//  FAHackDays
//
//  Created by Matt Beaney on 22/02/2021.
//

import Foundation

class CharactersController {
    func getCharacters(completion: @escaping ([Character]) -> Void) {
        /// Create a URL object.
        let url = URL(string: "https://beaneyios.github.io/characters.json")!
        
        /// Fetch the "shared" session
        let urlSession = URLSession.shared
        
        /// Create a dataTask that will perform the download, pass in the callback for this dataTask.
        let dataTask = urlSession.dataTask(with: url) { (data, response, error) in
            
            /// Make sure the data is not nil. If it is, call the callback with an empty array.
            guard let data = data else {
                let emptyCharacterArray = [Character]()
                completion(emptyCharacterArray)
                return
            }
            
            do {
                /// Attempt to decode the JSON data into the type `DecodableCharacter`
                let decodableCharacters = try JSONDecoder().decode(
                    [Character].self,
                    from: data
                )
                
                /// Complete with the successfully decoded characters.
                completion(decodableCharacters)
            } catch let error {
                /// This will be some kind of parsing error. Print it and call the callback with an empty array.
                print(error)
                let emptyCharacterArray = [Character]()
                completion(emptyCharacterArray)
            }
        }
        
        /// Kick off the dataTask.
        dataTask.resume()
    }
}
