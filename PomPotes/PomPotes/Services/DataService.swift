//
//  DataServices.swift
//  PomPotes
//
//  Created by Tiago Santos on 01/10/2021.
//

import Foundation

class DataService {
    
    static func getLocalRecipes() -> [Recipe] {
        
        guard let pathString = Bundle.main.path(forResource: "recipes", ofType: "json") else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString)
            
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let recipes = try decoder.decode([Recipe].self, from: data)
            recipes.forEach {
                $0.id = UUID()
                $0.ingredients.forEach {
                    $0.id = UUID()
                }
            }
            return recipes
        } catch {
            print(error)
            return [Recipe]()
        }
    }
    
}
