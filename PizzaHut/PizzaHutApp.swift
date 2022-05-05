//
//  PizzaHutApp.swift
//  PizzaHut
//
//  Gavin Pratt 4/4/22
//

import SwiftUI

@main
struct PizzaHutApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(UserPreferences())
        }
    }
}
