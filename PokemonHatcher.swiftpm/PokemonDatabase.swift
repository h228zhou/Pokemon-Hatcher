//
//  PokemonDatabase.swift
//  PokemonHatcher
//
//  Created by Ryan Zhou on 2/20/24.
//

import Foundation

class PokemonDatabase {
    static let shared = PokemonDatabase()
    
    var pokemons: [Pokemon] = [
        Pokemon(name: "Charmander", type: "Fire", height: 0.61, weight: 8.5, gender: ""),
        Pokemon(name: "Squirtle", type: "Water", height: 0.50, weight: 9.0, gender: ""),
        Pokemon(name: "Bulbasaur", type: "Grass", height: 0.70, weight: 6.9, gender: ""),
        Pokemon(name: "Pichu", type: "Electric", height: 0.30, weight: 2.0, gender: ""),
        Pokemon(name: "Eevee", type: "Normal", height: 0.30, weight: 6.5, gender: ""),
        Pokemon(name: "Riolu", type: "Fighting", height: 0.70, weight: 6.7, gender: ""),
        Pokemon(name: "Chimchar", type: "Fire", height: 0.50, weight: 6.2, gender: ""),
        Pokemon(name: "Mew", type: "Psychic", height: 0.40, weight: 4.0, gender: "Genderless"),
        Pokemon(name: "Munchlax", type: "Normal", height: 0.60, weight: 105.0, gender: ""),
        Pokemon(name: "Dratini", type: "Dragon", height: 1.80, weight: 3.3, gender: "")
    ]
}
