//
//  MenuRowView.swift
//  PizzaHut
//
//  Gavin Pratt 4/4/22
//

import SwiftUI

struct MenuRowView: View {
    var menuItem: MenuItem = testMenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 15) {
                Image("\(menuItem.id)_100w").clipShape(Capsule())
                VStack(alignment: .leading, spacing: 10) {
                    Text(menuItem.name)
                        .font(.body)
                        .fontWeight(.light)
                    RatingView(count: menuItem.rating)
                }
            }
            Text(menuItem.description)
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
            
            Spacer(minLength: 15)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem: MenuModel().menu[9])
    }
}

