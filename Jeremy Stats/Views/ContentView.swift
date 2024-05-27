//
//  ContentView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 23/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment (DataModel.self) var model
    
    var body: some View {
        VStack {
            Text(String(model.players.count))
            ForEach (model.players) {player in
                Text (String(player.jersey ?? 000 ))
            }
        }
        .padding()
        .onAppear {
            model.loadPlayerInfo()
        }
    }
}

#Preview {
    ContentView()
}
