//
//  FoodItemCell.swift
//  OrderUp
//
//  Created by user205179 on 8/27/21.
//

import SwiftUI

struct FoodItemCell: View {
    let foodItem: FoodItem
    @State private var inCart: Bool = false
    @State private var quantity: Int = 0
    
    var body: some View {
        HStack {
            Image(foodItem.pictureName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 100, maxHeight: 100)
            VStack(alignment: .leading, spacing: 10) {
                Text(foodItem.name)
                    .fontWeight(.medium)
                Text(foodItem.description)
                    .font(.subheadline)
                
                HStack {
                    Text("$\(String(format: "%.2f",foodItem.price))")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.red)
                    
                    Spacer(minLength: 30)
                    
                    ZStack(alignment: .trailing) {

                        Stepper(
                            onIncrement: {
                                quantity += 1
                            },
                            onDecrement: {
                                quantity -= 1
                                if quantity == 0 {
                                    inCart = false
                                }
                            },
                            label: {
                                Text("\(quantity)")
                                    .font(.caption)
                                    .fontWeight(.light)
                            })
                        .opacity(inCart ? 1 : 0)
                    
                        Button(action: {
                            inCart = true
                            quantity = 1
                        }, label: {
                            Text("Add To Cart")
                        })
                        .opacity(inCart ? 0 : 1)
                    }
                    
                    Spacer()
                }
            }
            
            Spacer()
        }
    }
    
    func isInCart() -> Bool {
        return inCart
    }
    
    func getQuantity() -> Int {
        return quantity
    }
}

struct FoodItemCell_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemCell(foodItem: Menu.example.categories.first!.items.first!)
    }
}
