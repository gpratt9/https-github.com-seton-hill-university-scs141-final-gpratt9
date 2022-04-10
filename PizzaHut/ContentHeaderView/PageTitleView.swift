//
//  PageTitleView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.light)
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza")
    }
}
