//
//  FoodItem.swift
//  OrderUp
//
//  Created by user205179 on 8/27/21.
//

import Foundation

struct FoodItem: Identifiable, Hashable {
    let id: Int
    let name: String
    let pictureName: String
    let description: String
    let price: Double
}
