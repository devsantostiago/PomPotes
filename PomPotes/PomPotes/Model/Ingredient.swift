//
//  Ingredient.swift
//  PomPotes
//
//  Created by Tiago Santos on 01/10/2021.
//

import Foundation

class Ingredient: Decodable, Identifiable {
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
}
