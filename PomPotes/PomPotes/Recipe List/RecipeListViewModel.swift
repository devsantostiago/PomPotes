//
//  RecipeListViewModel.swift
//  PomPotes
//
//  Created by Tiago Santos on 11/10/2021.
//

import Foundation

class RecipeListViewModel: ObservableObject {
    
    private var recipes = [Recipe]()
    @Published var cellsViewModels = [RecipeCellViewModel]()
    
    func didTappedGetRecipesButton() {
        recipes = DataService.getLocalRecipes()
        cellsViewModels = recipes.map({return RecipeCellViewModel(recipe: $0)})
    }
}
