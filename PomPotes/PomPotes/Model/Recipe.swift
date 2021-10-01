//
//  Recipe.swift
//  PomPotes
//
//  Created by Tiago Santos on 01/10/2021.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id: UUID?
    let name: String
    let image: String
    let featured: Bool
    let description: String
    let prepTime: String
    let cookTime: String
    let totalTime: String
    let servings: Int
    let ingredients: [Ingredient]
    let directions: [String]
    var highlights: [String]
}
