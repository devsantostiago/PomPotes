//
//  RecipesList.swift
//  PomPotes
//
//  Created by Tiago Santos on 11/10/2021.
//

import SwiftUI

struct RecipesList: View {
    
    @ObservedObject var model = RecipeListViewModel()
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Recipes")
                    .font(.largeTitle)
                    .bold()
                    .padding(.leading, 20)
                
                List(model.cellsViewModels) { model in
                    RecipeCell(imageName: model.imageName, name: model.name)
                }.listStyle(.plain)
            }
            
            CustomButton(description: "Get Recipes", color: .blue) {
                model.didTappedGetRecipesButton()
            }
        }
    }
}

struct RecipesList_Previews: PreviewProvider {
    static var previews: some View {
        RecipesList()
    }
}
