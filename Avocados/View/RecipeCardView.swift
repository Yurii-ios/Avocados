//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 10/02/2021.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - PROPERTIES
    
    var recipe: RecipeModel
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            //MARK: - CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        } //: VSTACK
                    } //: HSTACK
                )
            VStack(alignment: .leading, spacing: 20 ) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                //RATES
                RecipeRaitingView(recipe: recipe)
                
                //COOKING
               RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 20)
        } //: VSTACK
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel = true
        }
        .sheet(isPresented: self.$showModel) {
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

//MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
