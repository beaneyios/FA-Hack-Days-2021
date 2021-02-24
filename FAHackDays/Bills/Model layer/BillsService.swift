//
//  BillsServi ce.swift
//  FAHackDays
//
//  Created by Matt Beaney on 24/02/2021.
//

import Foundation

class BillsService {
    
    func fetchCharacters(completion: @escaping (([Bill]) -> Void)) {
        let url = URL(string: "https://beaneyios.github.io/bills.json")!
        
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
                let decodableBills = try jsonDecoder.decode([Bill].self, from: data)
                
                completion(decodableBills)
            } catch let error {
                print(error.localizedDescription)
                completion([])
            }
        }
        
        dataTask.resume()
    }
}
