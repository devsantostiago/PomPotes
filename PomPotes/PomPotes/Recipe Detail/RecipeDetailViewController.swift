//
//  RecipeDetailViewController.swift
//  PomPotes
//
//  Created by Tiago Santos on 25/10/2021.
//

import Foundation

class RecipeDetailViewModel {
    var imageName: String
    var ingredients: [String]
    var directions: [String]
    
    init(recipe: Recipe) {
        imageName = recipe.image
        ingredients = recipe.ingredients.map { return $0.name }
        directions = recipe.directions
    }
}
