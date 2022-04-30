//
//  PageTitleView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

let staticFont = Font.system(size: 22)
struct PageTitleView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    var isDisplayingOrder: Bool? = nil
    var title: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(sizeClass != .compact ? .largeTitle : staticFont)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: "chevron.up.square")
                .rotationEffect(isDisplayingOrder ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5), value: isDisplayingOrder)
                .font(sizeClass != .compact ? .title : staticFont)
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
