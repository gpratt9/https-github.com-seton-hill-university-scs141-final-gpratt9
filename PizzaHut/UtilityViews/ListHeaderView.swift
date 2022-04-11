//
//  ListHeaderView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct ListHeaderView: View {
    var title: String

    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 10)
                .foregroundColor(Color("G1"))
            Spacer()
        }.background(Color("G4"))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(title: "Menu")
    }
}
