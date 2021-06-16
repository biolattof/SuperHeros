//
//  Hero.swift
//  SuperHeros
//
//  Created by macbook on 6/15/21.
//

import Foundation

struct Hero: Decodable {
    var id: String = ""
    var name: String = ""
    var powerStats: Stats
    
    enum CodingKeys: String, CodingKey {
        case id = "id", name = "name", powerStats
    }
}

struct Stats: Decodable {
    var intelligence: Int = 0
    var strength: Int = 0
    var speed: Int = 0
    var durability: Int = 0
    var power: Int = 0
    var combat: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case intelligence = "intelligence", strength = "strength", speed = "speed", durability = "durability", power = "power", combat = "combat"
    }
}