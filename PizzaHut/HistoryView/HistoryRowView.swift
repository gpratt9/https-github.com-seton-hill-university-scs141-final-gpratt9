//
//  HistoryRowView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("1_100w").clipShape(Circle())
            Text("Five Pepper")
                .font(.title2)
            Spacer()
            Image(systemName: "chevron.right.square")
                .font(.title)
                .foregroundColor(Color("G2"))
                .padding([.top, .trailing])
        }
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
