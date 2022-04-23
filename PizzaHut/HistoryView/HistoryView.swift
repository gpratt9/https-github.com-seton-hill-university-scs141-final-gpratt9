//
//  HistoryListView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 10/04/22.
//

import SwiftUI

struct HistoryView: View {
    @State var imageId: Int = 0
    
    var body: some View {
        VStack {
            ContentHeaderView()
            Spacer(minLength: 40)
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "\(imageId)_250w")
            HistoryListView(imgId: $imageId)
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

