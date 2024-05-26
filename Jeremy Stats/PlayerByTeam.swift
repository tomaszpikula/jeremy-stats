//
//  PlayerByTeam.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 24/05/2024.
//

import Foundation

struct Player: Identifiable, Decodable {
    var id: Int?
    
    enum CodingKeys: String, CodingKey {
        
        case id = "PlayerID"
        
    }
}
