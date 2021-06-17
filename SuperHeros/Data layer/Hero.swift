//
//  Hero.swift
//  SuperHeros
//
//  Created by macbook on 6/15/21.
//

import Foundation

struct Hero: Decodable {
    var id = 0
    var name = ""
    var powerStats: Stats
    var images: HeroImages
    
    enum CodingKeys: String, CodingKey {
        case id, name, powerStats = "powerstats", images
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
        case intelligence, strength, speed, durability, power, combat
    }
}

struct HeroImages: Decodable {
    var smallImageURL = ""
    var largeImageURL = ""
    
    enum CodingKeys: String, CodingKey {
        case smallImageURL = "xs", largeImageURL = "lg"
    }
}
