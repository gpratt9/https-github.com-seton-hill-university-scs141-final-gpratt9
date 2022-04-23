//
//  MenuListView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct MenuListView: View {
    @ObservedObject var orderModel: OrderModel
    var menuList = MenuModel().menu
    
    var body: some View {
        VStack {
            ListHeaderView(title: "Menu", orderModel: orderModel)
            NavigationView {
                List(menuList) { item in
                    NavigationLink(destination: MenuDetailView(orderModel: self.orderModel, menuItem: item)) {
                        MenuRowView(menuItem: item)
                            .listRowInsets(EdgeInsets())
                    }
                }
                .navigationTitle("Order Pizza")
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel: testOrderModel)
    }
}

