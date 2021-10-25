//
//  RecipesList.swift
//  PomPotes
//
//  Created by Tiago Santos on 11/10/2021.
//•

import SwiftUI

struct RecipesList: View {
    
    @ObservedObject var model = RecipeListViewModel()
    @State var navigationTitle = "No Recepies"
    
    var body: some View {
        NavigationView {
            VStack {
                List(model.cellsViewModels) { cellModel in
                    NavigationLink {
                        RecipeDetailView(model: RecipeDetailViewModel(recipe: model.getRecipe(with: cellModel.id)))
                    } label: {
                        RecipeCell(imageName: cellModel.imageName, name: cellModel.name)
                    }
                }.listStyle(.plain)
                    
                
                CustomButton(description: "Get Recipes", color: .blue) {
                    model.didTappedGetRecipesButton()
                    navigationTitle = "Recipes"
                }
            }
                .navigationTitle(navigationTitle)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Press Me") {
                            print("Pressed")
                        }
                    }
                }
        }
    }
}

struct RecipesList_Previews: PreviewProvider {
    static var previews: some View {
        RecipesList()
    }
}
