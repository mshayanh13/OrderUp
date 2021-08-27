//
//  Category.swift
//  OrderUp
//
//  Created by user205179 on 8/27/21.
//

import Foundation

struct Category: Identifiable, Equatable {
    let id: Int
    let name: String
    let pictureName: String
    
    let items: [FoodItem]
}
