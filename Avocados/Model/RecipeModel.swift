//
//  RecipeModel.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 10/02/2021.
//

import SwiftUI

//MARK: - RECIPE MODEL

struct RecipeModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
