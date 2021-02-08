//
//  FactModel.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 09/02/2021.
//

import SwiftUI

//MARK: - FACT MODEL

struct FactModel: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
