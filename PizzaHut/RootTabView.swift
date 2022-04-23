//
//  TabView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 23/04/22.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            OrderMainView(orderModel: OrderModel())
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
                }
        }
        .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView().environmentObject(UserPreferences())
    }
}
