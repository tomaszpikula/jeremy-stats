//
//  PlayerByTeam.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 24/05/2024.
//

import Foundation

struct Player: Identifiable, Decodable {
    var id: Int?
    var jersey: Int?
    var salary: Int?
    var experience: Int?
    
    enum CodingKeys: String, CodingKey {
        
        case id = "PlayerID"
        case jersey = "Jersey"
        case salary = "Salary"
        case experience = "Experience"

        
    }
}

struct PlayerStats: Identifiable, Decodable {
    var id: Int?
    var games: Int?
    var points: Double?
    var rebounds: Double?
    var assists: Double?
    var steals: Double?
    var blockedShots: Double?
    var fieldGoalsPercentage: Double?
    var threePointersPercentage: Double?
    var freeThrowsPercentage: Double?
    
    
    enum CodingKeys: String, CodingKey {
        
        case id = "PlayerID"
        case games = "Games"
        case points = "Points"
        case rebounds = "Rebounds"
        case assists = "Assists"
        case steals = "Steals"
        case blockedShots = "BlockedShots"
        case fieldGoalsPercentage = "FieldGoalsPercentage"
        case threePointersPercentage = "ThreePointersPercentage"
        case freeThrowsPercentage = "FreeThrowsPercentage"
        
    }
    
}
