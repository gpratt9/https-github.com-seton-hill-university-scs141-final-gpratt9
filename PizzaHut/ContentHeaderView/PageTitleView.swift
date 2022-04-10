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
        HStack {
            Image(systemName: "chevron.up.square")
                .font(.title)
                .padding()
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .offset(x: -20, y: 0)
            
        }.background(Color("G4"))
         .foregroundColor(Color("G2"))
         
    }
}
struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Vismay Sharma")
    }
}

