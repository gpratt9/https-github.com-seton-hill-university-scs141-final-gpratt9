//
//  PizzaHutApp.swift
//  PizzaHut
//
//  Created by Ravi Kiran HR on 02/04/22.
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
