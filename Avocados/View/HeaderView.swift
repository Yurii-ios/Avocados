//
//  HeaderView.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 10/01/2021.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    @StatePrivate var showheadline: Bool = false
    
    
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack {
                    Text("Avocado")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text("avocadoss")
                        .font(.footnote)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                } //: VStack
                .padding(.vertical,0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            } //: HStack
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: 75)
        } //: ZStack
        .frame(width: 400, height: 320, alignment: .center)
    }
}

//MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
        
    }
}
