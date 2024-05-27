//
//  Data.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 24/05/2024.
//

import Foundation
import SwiftUI


@Observable
class DataModel {
    
    var players = [Player]()
    var jeremy = Player()
    var jeremyIndex = 0
    
    func loadPlayerInfo() {
        
        Task {
            await players = getPlayerInfo()
            jeremyIndex = players.firstIndex(where: {$0.id == 20002881}) ?? 0
            jeremy = players[jeremyIndex]
            print(jeremy)
        }
        
    }
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getPlayerInfo() async -> [Player] {
        
        guard apiKey != nil else {
            return [Player]()
        }
        
        if let url = URL(string: "https://api.sportsdata.io/v3/nba/scores/json/Players/SA?key=\(apiKey!)") {
            
            var request = URLRequest(url: url)
            
            do {
                let (data, _) = try await URLSession.shared.data(for: request)
                
                let decoder = JSONDecoder()
                let result = try decoder.decode([Player].self, from: data)
                
                return result
                
            }
            catch{
                print(error)
            }
        }
        
        return [Player]()
    }
}
