//
//  RecipeDetailView.swift
//  PomPotes
//
//  Created by Tiago Santos on 25/10/2021.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var model: RecipeDetailViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                Image(model.imageName)
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    //Ingredients
                    Text("Ingredients")
                        .bold()
                        .padding([.top, .bottom], 10)
                    ForEach(model.ingredients, id: \.self) { ingredient in
                        Text("• \(ingredient)")
                    }
                    
                    //Directions
                    Text("Ingredients")
                        .bold()
                        .padding([.top, .bottom], 10)
                    ForEach(0..<model.directions.count, id: \.self) { i in
                        Text("\(i + 1)- \(model.directions[i])")
                    }
                }.padding()
            }
            .navigationTitle("Recipe Detail")
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(model: RecipeDetailViewModel(recipe: DataService.getLocalRecipes().first!))
    }
}
