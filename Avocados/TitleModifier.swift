//
//  TitleModifier.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 11/02/2021.
//

import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}


