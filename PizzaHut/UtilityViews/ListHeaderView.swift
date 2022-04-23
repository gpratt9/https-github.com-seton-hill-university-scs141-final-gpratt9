//
//  ListHeaderView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct ListHeaderView: View {
    var title: String
    @ObservedObject var orderModel: OrderModel

    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 10)
                .foregroundColor(Color("G1"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .foregroundColor(Color("IP"))
        .background(Color("G4"))
        .font(.headline)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(title: "Menu", orderModel: OrderModel())
    }
}
