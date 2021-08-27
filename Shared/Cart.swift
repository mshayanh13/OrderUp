//
//  Cart.swift
//  OrderUp
//
//  Created by user205179 on 8/27/21.
//

import Foundation

struct Cart {
    var items = [FoodItem: Int]()
    
    mutating func addOne(foodItem: FoodItem) {
        if let currentQuantity = items[foodItem], currentQuantity > 0 {
            self.items[foodItem] = currentQuantity + 1
        } else {
            self.items[foodItem] = 1
        }
    }
    
    mutating func removeOne(foodItem: FoodItem) {
        if let currentQuantity = items[foodItem], currentQuantity > 1 {
            self.items[foodItem] = currentQuantity - 1
        } else {
            self.items[foodItem] = nil
        }
    }
    
    func getTotal() -> Double {
        var total = 0.0
        for food in items {
            let price = food.key.price
            let quantity = food.value
            total += (price * Double(quantity))
        }
        return total
    }
    
    func getQuantity() -> Int {
        var quantityTotal = 0
        for item in items {
            let quantity = item.value
            quantityTotal += quantity
        }
        return quantityTotal
    }
}
