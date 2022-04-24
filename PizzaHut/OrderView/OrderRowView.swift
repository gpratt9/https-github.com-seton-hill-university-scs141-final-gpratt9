//
//  OrderRowView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem: OrderItem
    
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline) {
                Image(systemName: "\(orderItem.id).square")
                Text(orderItem.description).font(.headline)
                Spacer()
                Text(orderItem.formattedExtendedPrice).bold()
            }
            Text(orderItem.comments)
        }
        .animation(.none, value: 1)
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
