//
//  Pokemon.swift
//  Pokedex
//
//  Created by Nathan Hopkins on 10/18/16.
//  Copyright © 2016 NathanHopkins. All rights reserved.
//

import Foundation

struct Pokemon {
//============================
//  Mark: - Propreties
//============================

    let name: String
    let id: Int
    let abilites: [String]
}

extension Pokemon {
    
    init?(dictionary: [String: Any]) {
        guard let name = dictionary["name"] as? String,
        let id = dictionary ["id"] as? Int,
            let abilityDictionaries = dictionary["abilities"] as? [[String: AnyObject]] else { return nil }
        let abilities = abilityDictionaries.flatMap({ $0["ability"]?["name"] as? String})
        self.init(name: name, id: id, abilites: abilities)
        
    }
}
