//
//  ContentView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 23/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    var dataService = DataService()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear(perform: {
            Task {
                await dataService.playersByTeam()
            }
        })
    }
}

#Preview {
    ContentView()
}
