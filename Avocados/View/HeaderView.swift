//
//  HeaderView.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 10/01/2021.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    var header: HeaderModel
    
    // switch animation
    @State private var showheadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
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
            .offset(x: -30, y: showheadline ? 75 : 220)
            .animation(slideInAnimation)
            .onAppear(perform: {
                showheadline.toggle()
            })
        } //: ZStack
        .frame(width: 400, height: 320, alignment: .center)
    }
}

//MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[1])
          .previewLayout(.sizeThatFits)
          .environment(\.colorScheme, .dark)
        
    }
}
