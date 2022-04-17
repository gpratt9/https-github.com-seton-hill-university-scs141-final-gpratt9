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
            Image("1_100w")
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
            Text("Five Pepper")
                .font(.title)
            Spacer()
            Image(systemName: "chevron.right.square")
                .font(.title)
                .foregroundColor(Color("G3"))
                .padding([.top, .trailing])
        }
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
