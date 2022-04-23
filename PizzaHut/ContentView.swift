//
//  ContentView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 02/04/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed: Bool = true
    
    var body: some View {
        VStack {
            ContentHeaderView()
                .layoutPriority(1)
            Button {
                isMenuDisplayed.toggle()
            } label: {
                PageTitleView(isDisplayingOrder: isMenuDisplayed, title: "Order Pizza!")
            }
            Spacer(minLength: 20)
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
            
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
                .previewDevice(PreviewDevice(rawValue: "iPad 12"))
                .colorScheme(.dark)
                .background(.black)
        }
    }
}
