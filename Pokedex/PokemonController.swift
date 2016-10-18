//
//  PokemonController.swift
//  Pokedex
//
//  Created by Nathan Hopkins on 10/18/16.
//  Copyright © 2016 NathanHopkins. All rights reserved.
//

import Foundation

class PokemonController {
    
    //============================
    //  Mark: - Propreties
    //============================
    
    static let baseURL = "http://pokeapi.co/api/v2/pokemon/"
    
    //============================
    //  Mark: - Methods
    //============================
    
    static func fetchPokemon(for searchTerm: String, completion: @escaping (Pokemon?) -> Void) {
        
        let searchURL = baseURL + searchTerm.lowercased()
        
        guard let url = URL(string: searchURL) else {
            completion(nil)
            return
        }
        
        
        NetworkController.performRequest(for: url, httpMethod: .Get) { (data, error) in
            
            guard let data = data,
                let jsonDictionary = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [String: Any ] else {
                    completion(nil)
                    return
            }
            
            let pokemon = Pokemon(dictionary: jsonDictionary)
            completion(pokemon)
        }
        
    }
}
