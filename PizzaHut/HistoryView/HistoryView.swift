//
//  HistoryListView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
            Spacer(minLength: 40)
            PageTitleView(title: "Pizza History")
            HistoryListView()
            Spacer()
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
            HistoryView()
                .colorScheme(.dark)
                .background(.black)
        }
    }
}

