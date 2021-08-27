//
//  ContentView.swift
//  Shared
//
//  Created by user205179 on 8/27/21.
//

import SwiftUI

struct ContentView: View {
    let menu: Menu
    var cart = Cart()
    @State private var menuToShow = [FoodItem]()
        
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    LazyHGrid(rows: [GridItem(.flexible())], alignment: .center) {
                        ForEach(menu.categories) { category in
                            CategoryCell(category: category)
                                .onTapGesture {
                                    menuToShow = category.items
                                }
                        }
                    }
                }
                .padding()
                .frame(maxHeight: 150)
                
                Spacer()
                
                List(menuToShow) { foodItem in
                    FoodItemCell(foodItem: foodItem)
                }
                
            }
            .navigationTitle("Menu")
            .navigationBarItems(trailing: Text("1"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: Menu.example)
    }
}
