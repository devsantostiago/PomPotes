//
//  RecipeCell.swift
//  PomPotes
//
//  Created by Tiago Santos on 11/10/2021.
//

import SwiftUI

struct RecipeCell: View {
    
    var imageName: String
    var name: String
    
    var body: some View {
        HStack{
            Image(imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFill()
            Text(name)
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(imageName: "swift", name: "Swift")
    }
}
