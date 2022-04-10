//
//  MenuRowView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w").clipShape(Capsule())
            VStack(alignment: .leading, spacing: 10) {
                Text("Five Pepper Pizza")
                    .font(.body)
                    .fontWeight(.light)
                RatingView()
            }
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}

