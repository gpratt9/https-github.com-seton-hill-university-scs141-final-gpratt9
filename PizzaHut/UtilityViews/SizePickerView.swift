//
//  SizePickerView.swift
//  PizzaHut
//
//  Gavin Pratt 4/4/22
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
