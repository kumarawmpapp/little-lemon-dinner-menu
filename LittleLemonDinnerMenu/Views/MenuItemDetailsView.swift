//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Pradeep Kumara on 3/8/25.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.width / 1.5)
            
            Text("Price:")
                .fontWeight(.bold)
            Text("\(item.price)")
                .padding(.bottom, 5)
            
            Text("Ordered:")
                .fontWeight(.bold)
            Text("\(item.ordersCount)")
                .padding(.bottom, 5)
            
            Text("Ingredients:")
                .fontWeight(.bold)
            ForEach(item.ingredients, id: \.self) { ingredient in
                Text(ingredient.rawValue)
            }
            
            Spacer()
        }
        .navigationTitle(item.title)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(item: MenuViewViewModel().foodMenuItems[0])
    }
}
