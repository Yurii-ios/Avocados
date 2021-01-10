//
//  HeaderModel.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 10/01/2021.
//

import SwiftUI

//MARK: - HEADER MODEL

struct HeaderModel: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
