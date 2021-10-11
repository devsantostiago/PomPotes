//
//  RecipeCellViewModel.swift
//  PomPotes
//
//  Created by Tiago Santos on 11/10/2021.
//

import Foundation

class RecipeCellViewModel: Identifiable {
    
    var imageName: String
    var name: String
    var id: UUID?
    
    init(recipe: Recipe){
        imageName = recipe.image
        name = recipe.name
        id = recipe.id
    }
}
