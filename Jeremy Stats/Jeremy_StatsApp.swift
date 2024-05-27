//
//  Jeremy_StatsApp.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 23/05/2024.
//

import SwiftUI

@main
struct Jeremy_StatsApp: App {
    
    @State var model = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
        }
    }
}
