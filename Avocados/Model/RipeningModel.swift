//
//  RipeningModel.swift
//  Avocados
//
//  Created by Yurii Sameliuk on 12/02/2021.
//

import SwiftUI

//MARK: - RIPENING MODEL

struct RipeningModel: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
