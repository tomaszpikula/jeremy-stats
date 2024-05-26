//
//  ContentView.swift
//  Jeremy Stats
//
//  Created by Tomasz Pikula on 23/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var players = [Player]()
    var dataService = DataService()
    
    var body: some View {
        VStack {
            Text(String(players.count))
        }
        .padding()
        .onAppear(perform: {
            Task {
                await players = dataService.playersByTeam()
                print(players)            }
        })
    }
}

#Preview {
    ContentView()
}
