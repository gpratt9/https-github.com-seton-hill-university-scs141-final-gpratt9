//
//  MenuListView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct MenuListView: View {
    var menuList = MenuModel().menu
    
    var body: some View {
        VStack {
            ListHeaderView(title: "Menu")
            List(menuList) { item in
                MenuRowView(menuItem: item)
                    .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

