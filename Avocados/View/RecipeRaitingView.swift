//
//  RecipeRaitingView.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 10/02/2021.
//

import SwiftUI

struct RecipeRaitingView: View {
    //MARK: - PROPERTIES
    var recipe: RecipeModel
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

//MARK: - PREVIEW
struct RecipeRaitingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRaitingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
