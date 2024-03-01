//
//  PokemonGenerator.swift
//  PokemonHatcher
//
//  Created by Ryan Zhou on 2/20/24.
//

import Foundation

class PokemonGenerator {
    static func generateRandomPokemon() -> Pokemon {
        let randomIndex = Int(arc4random_uniform(UInt32(PokemonDatabase.shared.pokemons.count)))
        var pokemon = PokemonDatabase.shared.pokemons[randomIndex]
        
        /// Randomize Pokemon's height, weight and gender
        pokemon.height *= Double.random(in: 0.8...1.2)
        pokemon.weight *= Double.random(in: 0.8...1.2)
        
        if pokemon.gender == "" {
            let randomGender = Bool.random()
            if randomGender {
                pokemon.gender = "Female"
            } else {
                pokemon.gender = "Male"
            }
        }
        
        return pokemon
    }
}
