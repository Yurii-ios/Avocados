//
//  ContentView.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 08/01/2021.
//

import SwiftUI

struct ContentView: View {
        //MARK: - PROPERTY
    var headers: [HeaderModel] = headersData
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0){
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                        
                    }
                }
                
                //Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All about Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                } //: Footer
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            } //: VStack
        } //: ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
//        TabView {
//            AvocadosView()
//                .tabItem {
//                    Image("tabicon-branch")
//                    Text("Avocados")
//                }
//
//            ContentView()
//                .tabItem {
//                    Image("tabicon-book")
//                    Text("Recepies")
//                }
//
//            RipeningStagesView()
//                .tabItem {
//                    Image("tabicon-avocado")
//                    Text("Ripening")
//                }
//
//            SettingsView()
//                .tabItem {
//                    Image("tabicon-settings")
//                    Text("Settings")
//                }
//        } //: TabView
//        .accentColor(.primary)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
        
    }
}
