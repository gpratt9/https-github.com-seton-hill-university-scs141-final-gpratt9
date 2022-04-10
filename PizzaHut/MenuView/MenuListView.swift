//
//  MenuListView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        VStack {
            ListHeaderView(title: "Menu")
            List(0 ..< 5) { _ in
                MenuRowView()
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

