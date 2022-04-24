//
//  OrderListView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct OrderListView: View {
    @ObservedObject var orderModel: OrderModel
    var body: some View {
        VStack {
            List {
                Section(header: ListHeaderView(title: "Your Order", orderModel: orderModel)) {
                    ForEach(orderModel.orders) { item in
                        OrderRowView(orderItem: item)
                    }
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}

