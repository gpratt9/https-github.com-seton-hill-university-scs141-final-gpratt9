//
//  SizePickerView.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 24/04/22.
//

import SwiftUI

struct SizePickerView: View {
    @EnvironmentObject var userPreferences: UserPreferences
    var body: some View {
        Picker(selection: $userPreferences.size, content: {
            ForEach(userPreferences.sizes, id: \.self) { size in
                Text(size.formatted()).tag(size)
            }
        }, label: {
            Text("Pizza size")
        })
            .pickerStyle(SegmentedPickerStyle())
            .font(.headline)
    }
}

struct SizePickerView_Previews: PreviewProvider {
    static var previews: some View {
        SizePickerView()
            .environmentObject(UserPreferences())
    }
}
