//
//  HistoryDetailView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/18/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct HistoryDetailView: View {
    var historyItem: HistoryItem
    @State var isPresented: Bool = false
    @Binding var imageID: Int
    var body: some View {
        imageID = historyItem.id
        return VStack {
                PageTitleView(title: historyItem.name)
                MapView(latitude: historyItem.latitude, longitude: historyItem.longitude, regionRadius: 100000)
                    .frame(height:100)
                PresentMapButton(isPresented: $isPresented, historyItem: historyItem)
                Text(historyItem.history)
                    .frame(height:200)
                Spacer()
        }.padding(EdgeInsets())
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem:HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
