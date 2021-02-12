//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 08/01/2021.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    var ripeningStages: [RipeningModel] = ripeningData
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
            
        } //: SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

//MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
