//
//  Data.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 24/05/2024.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func playersByTeam() async {
        
        guard apiKey != nil else {
            return
        }
        
        if let url = URL(string: "https://api.sportsdata.io/v3/nba/scores/json/Players/SA?key=\(apiKey!)") {
            
            var request = URLRequest(url: url)
            
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                
                print(data)
                print(response)
            }
            catch{
                print(error)
            }
        }
    }
}
