//
//  Menu.swift
//  OrderUp
//
//  Created by user205179 on 8/27/21.
//

import Foundation

struct Menu {
    let categories: [Category]
    
    static let example: Menu = Menu(categories:
        [
            Category(id: 1, name: "Vegetable", pictureName: "asparagus_vegetable", items:
                        [
                            FoodItem(id: 1, name: "Asparagus", pictureName: "asparagus_vegetable", description: "Test", price: 10.95),
                            FoodItem(id: 2, name: "Beetroot", pictureName: "beetroot_1", description: "Test", price: 10.95)
                        ]),
            Category(id: 2, name: "Fruits", pictureName: "pears", items:
                        [
                            FoodItem(id: 3, name: "Pear", pictureName: "pears", description: "Test", price: 11.99),
                            FoodItem(id: 4, name: "Sweet Banana", pictureName: "sweet_banana", description: "Test", price: 11.99),
                            FoodItem(id: 5, name: "Sweet Carrot", pictureName: "sweet_carrot", description: "Test", price: 11.99)
                        ]),
            Category(id: 3, name: "Junk Food", pictureName: "chips", items:
                        [
                            FoodItem(id: 6, name: "Chips", pictureName: "chips", description: "Test", price: 5.88),
                            FoodItem(id: 7, name: "Fries", pictureName: "fries", description: "Test", price: 5.88),
                            FoodItem(id: 8, name: "Lemon Cake", pictureName: "lemon_cake", description: "Test", price: 5.88),
                            FoodItem(id: 9, name: "Cherry Donut", pictureName: "cherry_donut", description: "Test", price: 8.88)
                        ])
        ])
}
