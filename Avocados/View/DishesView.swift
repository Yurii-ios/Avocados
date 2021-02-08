//
//  DishesView.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 10/01/2021.
//

import SwiftUI

struct DishesView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            // 1st Column
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModiFier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModiFier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModiFier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModiFier())
                    Spacer()
                    Text("Spreds")
                }
            } //: VStack
            
            // 2nd Column
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            // 3rd column
            VStack(alignment: .trailing, spacing: 4) {
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModiFier())
                }
                Divider()
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModiFier())
                }
                Divider()
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModiFier())
                }
                Divider()
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModiFier())
                }
            }
        } //: HStack
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModiFier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

//MARK: - PREVIEW
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
