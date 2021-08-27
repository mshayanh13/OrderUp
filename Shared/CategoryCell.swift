//
//  CategoryCell.swift
//  OrderUp
//
//  Created by user205179 on 8/27/21.
//

import SwiftUI

struct CategoryCell: View {
    let category: Category
    
    var body: some View {
        VStack {
            Image("\(category.pictureName)")
                .resizable()
                .scaledToFit()
            Text("\(category.name)")
                .font(.title)
                .fontWeight(.regular)
        }
    }
}

struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(category: Menu.example.categories.first!)
    }
}
