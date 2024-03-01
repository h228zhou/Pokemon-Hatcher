//
//  Pokemon.swift
//  PokemonHatcher
//
//  Created by Ryan Zhou on 2/20/24.
//

import Foundation

struct Pokemon: Identifiable {
    var id = UUID()
    let name: String
    let type: String
    var height: Double
    var weight: Double
    var gender: String
}
