//
//  PageTitleView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct PageTitleView: View {
    var isDisplayingOrder: Bool? = nil
    var title: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: isDisplayingOrder ?? false ? "chevron.up.square" : "chevron.down.square" )
                .font(.title)
                .foregroundColor(isDisplayingOrder != nil ? Color("G1"): .clear)
                .padding()
            ,alignment: .leading
        )
            .background(Color("G4"))
            .foregroundColor(Color("G1"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza")
    }
}
